.class Lcom/miui/home/launcher/widget/NoSpaceToast$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NoSpaceToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/widget/NoSpaceToast;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/widget/NoSpaceToast;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/widget/NoSpaceToast;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/widget/NoSpaceToast$1;->this$0:Lcom/miui/home/launcher/widget/NoSpaceToast;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/home/launcher/widget/NoSpaceToast$1;->this$0:Lcom/miui/home/launcher/widget/NoSpaceToast;

    invoke-static {p1}, Lcom/miui/home/launcher/widget/NoSpaceToast;->access$000(Lcom/miui/home/launcher/widget/NoSpaceToast;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/widget/NoSpaceToast;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/miui/home/launcher/widget/NoSpaceToast$1;->this$0:Lcom/miui/home/launcher/widget/NoSpaceToast;

    invoke-static {p1}, Lcom/miui/home/launcher/widget/NoSpaceToast;->access$100(Lcom/miui/home/launcher/widget/NoSpaceToast;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/widget/NoSpaceToast$1;->this$0:Lcom/miui/home/launcher/widget/NoSpaceToast;

    invoke-static {p1}, Lcom/miui/home/launcher/widget/NoSpaceToast;->access$000(Lcom/miui/home/launcher/widget/NoSpaceToast;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/widget/NoSpaceToast$1;->this$0:Lcom/miui/home/launcher/widget/NoSpaceToast;

    invoke-static {v1}, Lcom/miui/home/launcher/widget/NoSpaceToast;->access$200(Lcom/miui/home/launcher/widget/NoSpaceToast;)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/launcher/widget/NoSpaceToast;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/widget/NoSpaceToast$1;->this$0:Lcom/miui/home/launcher/widget/NoSpaceToast;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/widget/NoSpaceToast;->setVisibility(I)V

    :goto_0
    return-void
.end method
