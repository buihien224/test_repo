.class public Lcom/miui/home/launcher/transitioneffects/TransitionEffectStack;
.super Lcom/miui/home/launcher/transitioneffects/TransitionEffect;
.source "TransitionEffectStack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffect;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverShotTension()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScreenSnapDuration()I
    .locals 1

    const/16 v0, 0x1c2

    return v0
.end method

.method public resetTransformation(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffect;->resetTransformationView(Landroid/view/View;)V

    return-void
.end method

.method public updateTransformation(FFFFLandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 7

    const/4 p2, 0x0

    cmpg-float p3, p1, p2

    if-lez p3, :cond_2

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p4, p1, p3

    if-ltz p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectStack;->mPreEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffect;

    if-nez p4, :cond_1

    invoke-virtual {p0, p5}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectStack;->resetView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p6

    int-to-float p6, p6

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p6, v0

    invoke-virtual {p5}, Landroid/view/View;->getScaleY()F

    move-result v1

    invoke-virtual {p5}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {p5}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-virtual {p5}, Landroid/view/View;->getPivotY()F

    move-result v4

    sub-float p1, p3, p1

    invoke-virtual {p5, p1}, Landroid/view/View;->setAlpha(F)V

    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr p1, v6

    add-float/2addr p1, v5

    sub-float/2addr v4, p6

    sub-float v5, p3, v1

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p5, v3}, Landroid/view/View;->setTranslationY(F)V

    sub-float v3, p3, v2

    mul-float/2addr v3, p4

    div-float/2addr v3, v0

    sub-float/2addr p3, p1

    mul-float/2addr p4, p3

    const/high16 p3, 0x40400000    # 3.0f

    mul-float/2addr p4, p3

    add-float/2addr p4, v3

    invoke-virtual {p5, p4}, Landroid/view/View;->setTranslationX(F)V

    mul-float/2addr v2, p1

    invoke-virtual {p5, v2}, Landroid/view/View;->setScaleX(F)V

    mul-float/2addr p1, v1

    invoke-virtual {p5, p1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p5, p2}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p5, p6}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p5, p2}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p5, p2}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p5, p2}, Landroid/view/View;->setRotationY(F)V

    sget p1, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p5, p1}, Landroid/view/View;->setCameraDistance(F)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0, p5}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectStack;->resetTransformationView(Landroid/view/View;)V

    return-void
.end method
