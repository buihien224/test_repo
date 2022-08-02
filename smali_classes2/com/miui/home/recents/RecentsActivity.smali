.class public Lcom/miui/home/recents/RecentsActivity;
.super Lcom/miui/home/launcher/BaseActivity;
.source "RecentsActivity.java"


# instance fields
.field recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

.field recentsView:Lcom/miui/home/recents/views/RecentsView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/BaseActivity;-><init>()V

    return-void
.end method

.method private setSystemUiVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public getOverviewPanel()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsView:Lcom/miui/home/recents/views/RecentsView;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    return-object v0
.end method

.method protected initViews()V
    .locals 2

    const v0, 0x7f0d015b

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/RecentsActivity;->setContentView(I)V

    const v0, 0x7f0a028a

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    iput-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    iget-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    const v0, 0x7f0a0291

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsView;

    iput-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsView:Lcom/miui/home/recents/views/RecentsView;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsActivity;->initViews()V

    invoke-static {p0}, Lcom/miui/home/recents/RecentsActivityTracker;->onRecentsActivityCreate(Lcom/miui/home/recents/RecentsActivity;)V

    invoke-direct {p0}, Lcom/miui/home/recents/RecentsActivity;->setSystemUiVisibility()V

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x1

    invoke-static {p1, v0, v0}, Lcom/miui/launcher/utils/MiuiWindowManagerUtils;->setExtraFlag(Landroid/view/Window;II)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onDestroy()V

    invoke-static {p0}, Lcom/miui/home/recents/RecentsActivityTracker;->onRecentsActivityDestroy(Lcom/miui/home/recents/RecentsActivity;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/miui/home/recents/RecentsActivityTracker;->onRecentsActivityNewIntent(Lcom/miui/home/recents/RecentsActivity;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->reloadStackView()V

    iget-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setOverviewStateEnabled(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onStop()V

    iget-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->onExitState()V

    return-void
.end method
