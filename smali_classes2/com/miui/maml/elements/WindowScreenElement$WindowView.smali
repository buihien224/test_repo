.class Lcom/miui/maml/elements/WindowScreenElement$WindowView;
.super Landroid/view/View;
.source "WindowScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/WindowScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/WindowScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/WindowScreenElement;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement$WindowView;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement$WindowView;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/WindowScreenElement;->doRenderWithTranslation(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement$WindowView;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    iget-object p1, p1, Lcom/miui/maml/elements/WindowScreenElement;->mController:Lcom/miui/maml/RendererController;

    invoke-virtual {p1}, Lcom/miui/maml/RendererController;->doneRender()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement$WindowView;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/WindowScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onHover(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement$WindowView;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/WindowScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
