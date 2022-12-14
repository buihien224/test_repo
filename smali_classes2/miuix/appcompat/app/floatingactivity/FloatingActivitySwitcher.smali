.class public Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;
.super Ljava/lang/Object;
.source "FloatingActivitySwitcher.java"


# static fields
.field private static sInstance:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;


# instance fields
.field private mActivityCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mLastActivityPanel:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;
    .locals 1

    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    return-object v0
.end method

.method public static onSaveInstanceState(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "floating_switcher_saved_key"

    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getActivityIndex(Lmiuix/appcompat/app/AppCompatActivity;)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mLastActivityPanel:Ljava/lang/ref/WeakReference;

    sput-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    return-void
.end method

.method getActivityCache()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method getActivityIndex(Lmiuix/appcompat/app/AppCompatActivity;)I
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method getLastActivityPanel()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mLastActivityPanel:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0
.end method

.method getPreviousActivity(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/AppCompatActivity;
    .locals 1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getActivityIndex(Lmiuix/appcompat/app/AppCompatActivity;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->clear()V

    :cond_1
    return-void
.end method
