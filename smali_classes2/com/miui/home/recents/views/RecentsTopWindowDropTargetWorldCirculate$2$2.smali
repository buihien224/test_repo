.class Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2$2;
.super Ljava/lang/Object;
.source "RecentsTopWindowDropTargetWorldCirculate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2;->onAnimationCancel(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2$2;->this$1:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2$2;->this$1:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2;

    iget-object v0, v0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2;->this$0:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2$2;->this$1:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2;

    iget-object v1, v1, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2;->val$taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0, v1}, Lcom/android/systemui/shared/recents/utilities/WorldCirculate;->startWorldCirculate(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
