.class Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$8;
.super Ljava/lang/Object;
.source "SharedPreferencesWrapper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->getAll()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;


# direct methods
.method constructor <init>(Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$8;->this$0:Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$8;->call()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$8;->this$0:Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->access$100(Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
