.class public final enum Lcom/miui/home/settings/DeleteAppInfo$FromType;
.super Ljava/lang/Enum;
.source "DeleteAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/settings/DeleteAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FromType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/settings/DeleteAppInfo$FromType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/settings/DeleteAppInfo$FromType;

.field public static final enum MIUI_AUTO_PARSE:Lcom/miui/home/settings/DeleteAppInfo$FromType;

.field public static final enum XML:Lcom/miui/home/settings/DeleteAppInfo$FromType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/miui/home/settings/DeleteAppInfo$FromType;

    const-string v1, "XML"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/home/settings/DeleteAppInfo$FromType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/settings/DeleteAppInfo$FromType;->XML:Lcom/miui/home/settings/DeleteAppInfo$FromType;

    new-instance v0, Lcom/miui/home/settings/DeleteAppInfo$FromType;

    const-string v1, "MIUI_AUTO_PARSE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/home/settings/DeleteAppInfo$FromType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/settings/DeleteAppInfo$FromType;->MIUI_AUTO_PARSE:Lcom/miui/home/settings/DeleteAppInfo$FromType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/home/settings/DeleteAppInfo$FromType;

    sget-object v1, Lcom/miui/home/settings/DeleteAppInfo$FromType;->XML:Lcom/miui/home/settings/DeleteAppInfo$FromType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/settings/DeleteAppInfo$FromType;->MIUI_AUTO_PARSE:Lcom/miui/home/settings/DeleteAppInfo$FromType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/home/settings/DeleteAppInfo$FromType;->$VALUES:[Lcom/miui/home/settings/DeleteAppInfo$FromType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/settings/DeleteAppInfo$FromType;
    .locals 1

    const-class v0, Lcom/miui/home/settings/DeleteAppInfo$FromType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/settings/DeleteAppInfo$FromType;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/settings/DeleteAppInfo$FromType;
    .locals 1

    sget-object v0, Lcom/miui/home/settings/DeleteAppInfo$FromType;->$VALUES:[Lcom/miui/home/settings/DeleteAppInfo$FromType;

    invoke-virtual {v0}, [Lcom/miui/home/settings/DeleteAppInfo$FromType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/settings/DeleteAppInfo$FromType;

    return-object v0
.end method
