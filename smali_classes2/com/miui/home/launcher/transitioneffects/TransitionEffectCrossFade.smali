.class public Lcom/miui/home/launcher/transitioneffects/TransitionEffectCrossFade;
.super Lcom/miui/home/launcher/transitioneffects/TransitionEffect;
.source "TransitionEffectCrossFade.java"


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
    .locals 0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p2, p2, p3

    if-lez p2, :cond_0

    invoke-virtual {p0, p5}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectCrossFade;->resetTransformationView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectCrossFade;->mPreEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffect;

    if-nez p2, :cond_1

    invoke-virtual {p0, p5}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectCrossFade;->resetView(Landroid/view/View;)V

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr p3, p1

    const p1, 0x3f333333    # 0.7f

    mul-float/2addr p3, p1

    const p1, 0x3e99999a    # 0.3f

    add-float/2addr p3, p1

    invoke-virtual {p5, p3}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
