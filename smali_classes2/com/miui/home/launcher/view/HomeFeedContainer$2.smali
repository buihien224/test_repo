.class Lcom/miui/home/launcher/view/HomeFeedContainer$2;
.super Ljava/lang/Object;
.source "HomeFeedContainer.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/view/HomeFeedContainer;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/view/HomeFeedContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer$2;->this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer$2;->this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-static {v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->access$100(Lcom/miui/home/launcher/view/HomeFeedContainer;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer$2;->this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->access$302(Lcom/miui/home/launcher/view/HomeFeedContainer;J)J

    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer$2;->this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-static {p1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->access$400(Lcom/miui/home/launcher/view/HomeFeedContainer;)V

    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer$2;->this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-static {p1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->access$500(Lcom/miui/home/launcher/view/HomeFeedContainer;)Lcom/miui/home/launcher/view/HomeFeedArrowView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->startSecondVersionAnim()V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer$2;->this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-static {p1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->access$300(Lcom/miui/home/launcher/view/HomeFeedContainer;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer$2;->this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-static {p1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->access$400(Lcom/miui/home/launcher/view/HomeFeedContainer;)V

    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer$2;->this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-static {p1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->access$500(Lcom/miui/home/launcher/view/HomeFeedContainer;)Lcom/miui/home/launcher/view/HomeFeedArrowView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->startFirstVersionAnim()V

    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer$2;->this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->access$302(Lcom/miui/home/launcher/view/HomeFeedContainer;J)J

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/view/HomeFeedContainer$2;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
