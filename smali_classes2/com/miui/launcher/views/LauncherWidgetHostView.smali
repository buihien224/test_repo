.class public Lcom/miui/launcher/views/LauncherWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherWidgetHostView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected correctFrame(IIII)Landroid/graphics/Rect;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public doSetFrame(IIII)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherWidgetHostView;->setFrame(IIII)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 1

    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    return-object v0
.end method

.method protected onSetFrame(IIII)V
    .locals 0

    return-void
.end method

.method protected overrideSetFrame()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected setFrame(IIII)Z
    .locals 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherWidgetHostView;->correctFrame(IIII)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/miui/launcher/views/LauncherWidgetHostView;->onSetFrame(IIII)V

    invoke-virtual {p0}, Lcom/miui/launcher/views/LauncherWidgetHostView;->overrideSetFrame()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherWidgetHostView;->doSetFrame(IIII)Z

    move-result p1

    return p1

    :cond_0
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->top:I

    iget p3, v0, Landroid/graphics/Rect;->right:I

    iget p4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetHostView;->setFrame(IIII)Z

    move-result p1

    return p1
.end method

.method public superSetFrame(IIII)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetHostView;->setFrame(IIII)Z

    move-result p1

    return p1
.end method
