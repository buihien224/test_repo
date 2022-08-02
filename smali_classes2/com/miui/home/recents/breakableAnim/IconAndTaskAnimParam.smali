.class public Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;
.super Ljava/lang/Object;
.source "IconAndTaskAnimParam.java"


# instance fields
.field public mRectF:Landroid/graphics/RectF;

.field public mTaskAlpha:F

.field public mTaskRadius:F


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;->mRectF:Landroid/graphics/RectF;

    iput p2, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;->mTaskRadius:F

    iput p3, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;->mTaskAlpha:F

    return-void
.end method
