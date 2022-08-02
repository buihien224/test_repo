.class Lcom/miui/maml/elements/MusicController$2;
.super Landroid/media/session/MediaController$Callback;
.source "MusicController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/MusicController;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/MusicController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V

    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onExtrasChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    const-string v0, "MAML_MusicController"

    const-string v1, "onMetadataChanged"

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/MediaMetadata;)V

    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    const-string v0, "MAML_MusicController"

    const-string v1, "onPlaybackStateChanged"

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientPlaybackActionUpdate(J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onQueueChanged(Ljava/util/List;)V

    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    invoke-super {p0}, Landroid/media/session/MediaController$Callback;->onSessionDestroyed()V

    const-string v0, "MAML_MusicController"

    const-string v1, "onSessionDestroyed"

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onSessionDestroyed()V

    :cond_0
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/media/session/MediaController$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "MAML_MusicController"

    const-string p2, "onSessionEvent"

    invoke-static {p1, p2}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
