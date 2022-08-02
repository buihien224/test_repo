.class Lcom/miui/maml/elements/video/BaseVideoView$6;
.super Ljava/lang/Object;
.source "BaseVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/video/BaseVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/video/BaseVideoView;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/video/BaseVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iput v1, v0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    iput v1, v0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-static {v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$200(Lcom/miui/maml/elements/video/BaseVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->seekTo(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-static {v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$800(Lcom/miui/maml/elements/video/BaseVideoView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-static {v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$900(Lcom/miui/maml/elements/video/BaseVideoView;)F

    move-result v0

    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-static {v1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$900(Lcom/miui/maml/elements/video/BaseVideoView;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$400(Lcom/miui/maml/elements/video/BaseVideoView;I)V

    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-virtual {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->getDuration()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$1000(Lcom/miui/maml/elements/video/BaseVideoView;I)V

    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-static {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$000(Lcom/miui/maml/elements/video/BaseVideoView;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-virtual {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->start()V

    :cond_1
    return-void
.end method
