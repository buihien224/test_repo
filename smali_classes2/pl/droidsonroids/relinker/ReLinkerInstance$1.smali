.class Lpl/droidsonroids/relinker/ReLinkerInstance$1;
.super Ljava/lang/Object;
.source "ReLinkerInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/droidsonroids/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinker$LoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/droidsonroids/relinker/ReLinkerInstance;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$library:Ljava/lang/String;

.field final synthetic val$listener:Lpl/droidsonroids/relinker/ReLinker$LoadListener;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lpl/droidsonroids/relinker/ReLinkerInstance;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinker$LoadListener;)V
    .locals 0

    iput-object p1, p0, Lpl/droidsonroids/relinker/ReLinkerInstance$1;->this$0:Lpl/droidsonroids/relinker/ReLinkerInstance;

    iput-object p2, p0, Lpl/droidsonroids/relinker/ReLinkerInstance$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lpl/droidsonroids/relinker/ReLinkerInstance$1;->val$library:Ljava/lang/String;

    iput-object p4, p0, Lpl/droidsonroids/relinker/ReLinkerInstance$1;->val$version:Ljava/lang/String;

    iput-object p5, p0, Lpl/droidsonroids/relinker/ReLinkerInstance$1;->val$listener:Lpl/droidsonroids/relinker/ReLinker$LoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lpl/droidsonroids/relinker/ReLinkerInstance$1;->this$0:Lpl/droidsonroids/relinker/ReLinkerInstance;

    iget-object v1, p0, Lpl/droidsonroids/relinker/ReLinkerInstance$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lpl/droidsonroids/relinker/ReLinkerInstance$1;->val$library:Ljava/lang/String;

    iget-object v3, p0, Lpl/droidsonroids/relinker/ReLinkerInstance$1;->val$version:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lpl/droidsonroids/relinker/ReLinkerInstance;->access$000(Lpl/droidsonroids/relinker/ReLinkerInstance;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lpl/droidsonroids/relinker/ReLinkerInstance$1;->val$listener:Lpl/droidsonroids/relinker/ReLinker$LoadListener;

    invoke-interface {v0}, Lpl/droidsonroids/relinker/ReLinker$LoadListener;->success()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lpl/droidsonroids/relinker/MissingLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lpl/droidsonroids/relinker/ReLinkerInstance$1;->val$listener:Lpl/droidsonroids/relinker/ReLinker$LoadListener;

    invoke-interface {v1, v0}, Lpl/droidsonroids/relinker/ReLinker$LoadListener;->failure(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lpl/droidsonroids/relinker/ReLinkerInstance$1;->val$listener:Lpl/droidsonroids/relinker/ReLinker$LoadListener;

    invoke-interface {v1, v0}, Lpl/droidsonroids/relinker/ReLinker$LoadListener;->failure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
