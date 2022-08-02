.class public Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;
.super Ljava/lang/Object;
.source "SpringAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/util/SpringAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewState"
.end annotation


# instance fields
.field alpha:F

.field public scaleX:F

.field public scaleY:F

.field translationX:F

.field translationY:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->alpha:F

    iput p2, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleX:F

    iput p3, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleY:F

    iput p4, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->translationX:F

    iput p5, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->translationY:F

    return-void
.end method
