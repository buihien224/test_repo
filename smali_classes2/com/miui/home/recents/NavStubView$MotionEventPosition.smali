.class Lcom/miui/home/recents/NavStubView$MotionEventPosition;
.super Ljava/lang/Object;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MotionEventPosition"
.end annotation


# instance fields
.field rawX:F

.field rawY:F

.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$MotionEventPosition;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Landroid/view/MotionEvent;)Lcom/miui/home/recents/NavStubView$MotionEventPosition;
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView$MotionEventPosition;->rawX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView$MotionEventPosition;->rawY:F

    return-object p0
.end method
