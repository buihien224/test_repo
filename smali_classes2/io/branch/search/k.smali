.class public final enum Lio/branch/search/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/search/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/branch/search/k;

.field public static final enum b:Lio/branch/search/k;

.field public static final enum c:Lio/branch/search/k;

.field public static final enum d:Lio/branch/search/k;

.field public static final enum e:Lio/branch/search/k;

.field public static final enum f:Lio/branch/search/k;

.field public static final enum g:Lio/branch/search/k;

.field public static final enum h:Lio/branch/search/k;

.field public static final enum i:Lio/branch/search/k;

.field public static final enum j:Lio/branch/search/k;

.field public static final synthetic k:[Lio/branch/search/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lio/branch/search/k;

    const-string v1, "LOCAL_ZERO_STATE_LINK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/branch/search/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/branch/search/k;->a:Lio/branch/search/k;

    new-instance v1, Lio/branch/search/k;

    const-string v3, "LOCAL_ZERO_STATE_AD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/branch/search/k;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/branch/search/k;->b:Lio/branch/search/k;

    new-instance v3, Lio/branch/search/k;

    const-string v5, "LOCAL_SEARCH_LINK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/branch/search/k;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/branch/search/k;->c:Lio/branch/search/k;

    new-instance v5, Lio/branch/search/k;

    const-string v7, "LOCAL_SEARCH_AD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/branch/search/k;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/branch/search/k;->d:Lio/branch/search/k;

    new-instance v7, Lio/branch/search/k;

    const-string v9, "REMOTE_SEARCH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/branch/search/k;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/branch/search/k;->e:Lio/branch/search/k;

    new-instance v9, Lio/branch/search/k;

    const-string v11, "APP_STORE_SEARCH"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/branch/search/k;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/branch/search/k;->f:Lio/branch/search/k;

    new-instance v11, Lio/branch/search/k;

    const-string v13, "LOCAL_ZERO_STATE_LINK_PRELOAD"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/branch/search/k;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/branch/search/k;->g:Lio/branch/search/k;

    new-instance v13, Lio/branch/search/k;

    const-string v15, "LOCAL_ZERO_STATE_AD_PRELOAD"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lio/branch/search/k;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lio/branch/search/k;->h:Lio/branch/search/k;

    new-instance v15, Lio/branch/search/k;

    const-string v14, "LOCAL_SEARCH_LINK_PRELOAD"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lio/branch/search/k;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lio/branch/search/k;->i:Lio/branch/search/k;

    new-instance v14, Lio/branch/search/k;

    const-string v12, "LOCAL_SEARCH_AD_PRELOAD"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lio/branch/search/k;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lio/branch/search/k;->j:Lio/branch/search/k;

    const/16 v12, 0xa

    new-array v12, v12, [Lio/branch/search/k;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lio/branch/search/k;->k:[Lio/branch/search/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/search/k;
    .locals 1

    const-class v0, Lio/branch/search/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/search/k;

    return-object p0
.end method

.method public static values()[Lio/branch/search/k;
    .locals 1

    sget-object v0, Lio/branch/search/k;->k:[Lio/branch/search/k;

    invoke-virtual {v0}, [Lio/branch/search/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/search/k;

    return-object v0
.end method
