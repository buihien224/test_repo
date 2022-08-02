.class Lmiui/home/lib/dialog/AlertController$4;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/home/lib/dialog/AlertController;->setupWindowInsetsAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/home/lib/dialog/AlertController;


# direct methods
.method constructor <init>(Lmiui/home/lib/dialog/AlertController;I)V
    .locals 0

    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController$4;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-direct {p0, p2}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/WindowInsetsAnimation$Callback;->onEnd(Landroid/view/WindowInsetsAnimation;)V

    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController$4;->this$0:Lmiui/home/lib/dialog/AlertController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiui/home/lib/dialog/AlertController;->access$1102(Lmiui/home/lib/dialog/AlertController;Z)Z

    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController$4;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {p1}, Lmiui/home/lib/dialog/AlertController;->access$1600(Lmiui/home/lib/dialog/AlertController;)Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$4;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v0}, Lmiui/home/lib/dialog/AlertController;->access$700(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$4;->this$0:Lmiui/home/lib/dialog/AlertController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/home/lib/dialog/AlertController;->access$1500(Lmiui/home/lib/dialog/AlertController;I)V

    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$4;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v0, p1}, Lmiui/home/lib/dialog/AlertController;->access$1700(Lmiui/home/lib/dialog/AlertController;Landroid/view/WindowInsets;)V

    :cond_1
    return-void
.end method

.method public onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/WindowInsetsAnimation$Callback;->onPrepare(Landroid/view/WindowInsetsAnimation;)V

    invoke-static {}, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->cancelAnimator()V

    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController$4;->this$0:Lmiui/home/lib/dialog/AlertController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiui/home/lib/dialog/AlertController;->access$1102(Lmiui/home/lib/dialog/AlertController;Z)Z

    return-void
.end method

.method public onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p2

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$4;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v0}, Lmiui/home/lib/dialog/AlertController;->access$1400(Lmiui/home/lib/dialog/AlertController;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AlertController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowInsetsAnimation onProgress ime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$4;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v0}, Lmiui/home/lib/dialog/AlertController;->access$1200(Lmiui/home/lib/dialog/AlertController;)I

    move-result v0

    sub-int/2addr p2, v0

    if-gez p2, :cond_1

    const/4 p2, 0x0

    :cond_1
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$4;->this$0:Lmiui/home/lib/dialog/AlertController;

    neg-int p2, p2

    invoke-static {v0, p2}, Lmiui/home/lib/dialog/AlertController;->access$1500(Lmiui/home/lib/dialog/AlertController;I)V

    :cond_2
    return-object p1
.end method

.method public onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 3

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$4;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v0}, Lmiui/home/lib/dialog/AlertController;->access$1300(Lmiui/home/lib/dialog/AlertController;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController$4;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v2}, Lmiui/home/lib/dialog/AlertController;->access$700(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lmiui/home/lib/dialog/AlertController;->access$1202(Lmiui/home/lib/dialog/AlertController;I)I

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$4;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v0}, Lmiui/home/lib/dialog/AlertController;->access$1400(Lmiui/home/lib/dialog/AlertController;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AlertController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowInsetsAnimation onStart mPanelAndImeMargin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController$4;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v2}, Lmiui/home/lib/dialog/AlertController;->access$1200(Lmiui/home/lib/dialog/AlertController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$4;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v0}, Lmiui/home/lib/dialog/AlertController;->access$1200(Lmiui/home/lib/dialog/AlertController;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$4;->this$0:Lmiui/home/lib/dialog/AlertController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/home/lib/dialog/AlertController;->access$1202(Lmiui/home/lib/dialog/AlertController;I)I

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/WindowInsetsAnimation$Callback;->onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object p1

    return-object p1
.end method
