.class public Lcom/miui/maml/widget/edit/BaseConfig;
.super Ljava/lang/Object;
.source "widgetEditVarConfig.kt"


# instance fields
.field private final displayTitle:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final titleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/widget/edit/BaseConfig;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/maml/widget/edit/BaseConfig;->displayTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/maml/widget/edit/BaseConfig;->titleMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    check-cast p2, Ljava/lang/String;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    check-cast p3, Ljava/util/Map;

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/widget/edit/BaseConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final getDisplayTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/widget/edit/BaseConfig;->displayTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/widget/edit/BaseConfig;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitleMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/maml/widget/edit/BaseConfig;->titleMap:Ljava/util/Map;

    return-object v0
.end method
