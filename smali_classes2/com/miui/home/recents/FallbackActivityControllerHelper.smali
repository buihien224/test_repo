.class public final Lcom/miui/home/recents/FallbackActivityControllerHelper;
.super Ljava/lang/Object;
.source "FallbackActivityControllerHelper.java"

# interfaces
.implements Lcom/miui/home/recents/ActivityControlHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/home/recents/ActivityControlHelper<",
        "Lcom/miui/home/recents/RecentsActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$prepareRecentsUI$0(J)V
    .locals 0

    return-void
.end method


# virtual methods
.method public createActivityInitListener(Ljava/util/function/BiPredicate;)Lcom/miui/home/recents/ActivityControlHelper$ActivityInitListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Lcom/miui/home/recents/RecentsActivity;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/miui/home/recents/ActivityControlHelper$ActivityInitListener;"
        }
    .end annotation

    new-instance v0, Lcom/miui/home/recents/RecentsActivityTracker;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/RecentsActivityTracker;-><init>(Ljava/util/function/BiPredicate;)V

    return-object v0
.end method

.method public getCreatedActivity()Lcom/miui/home/recents/RecentsActivity;
    .locals 1

    invoke-static {}, Lcom/miui/home/recents/RecentsActivityTracker;->getCurrentActivity()Lcom/miui/home/recents/RecentsActivity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVisibleRecentsView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/recents/FallbackActivityControllerHelper;->getVisibleRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleRecentsView()Lcom/miui/home/recents/views/RecentsView;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/home/recents/FallbackActivityControllerHelper;->getCreatedActivity()Lcom/miui/home/recents/RecentsActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsActivity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisibleRecentsViewIgnoringWinFocus()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/home/recents/FallbackActivityControllerHelper;->getVisibleRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic prepareRecentsUI(Lcom/miui/home/launcher/BaseActivity;ZZLjava/util/function/Consumer;)Lcom/miui/home/recents/ActivityControlHelper$AnimationFactory;
    .locals 0

    check-cast p1, Lcom/miui/home/recents/RecentsActivity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/FallbackActivityControllerHelper;->prepareRecentsUI(Lcom/miui/home/recents/RecentsActivity;ZZLjava/util/function/Consumer;)Lcom/miui/home/recents/ActivityControlHelper$AnimationFactory;

    move-result-object p1

    return-object p1
.end method

.method public prepareRecentsUI(Lcom/miui/home/recents/RecentsActivity;ZZLjava/util/function/Consumer;)Lcom/miui/home/recents/ActivityControlHelper$AnimationFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/recents/RecentsActivity;",
            "ZZ",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/anim/AnimatorPlaybackController;",
            ">;)",
            "Lcom/miui/home/recents/ActivityControlHelper$AnimationFactory;"
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object p1, Lcom/miui/home/recents/-$$Lambda$FallbackActivityControllerHelper$iMkKskMXqOyorFBNs8dKGEkl1Dw;->INSTANCE:Lcom/miui/home/recents/-$$Lambda$FallbackActivityControllerHelper$iMkKskMXqOyorFBNs8dKGEkl1Dw;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/views/RecentsView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/RecentsView;->setAlpha(F)V

    xor-int/lit8 p2, p3, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/RecentsView;->setInOverviewState(Z)V

    new-instance p3, Lcom/miui/home/recents/FallbackActivityControllerHelper$1;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/miui/home/recents/FallbackActivityControllerHelper$1;-><init>(Lcom/miui/home/recents/FallbackActivityControllerHelper;Lcom/miui/home/recents/views/RecentsView;ZLjava/util/function/Consumer;)V

    return-object p3
.end method

.method public switchToRecentsIfVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
