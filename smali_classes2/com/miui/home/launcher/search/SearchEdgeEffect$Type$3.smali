.class final enum Lcom/miui/home/launcher/search/SearchEdgeEffect$Type$3;
.super Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;
.source "SearchEdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;-><init>(Ljava/lang/String;ILcom/miui/home/launcher/search/SearchEdgeEffect$1;)V

    return-void
.end method


# virtual methods
.method public createEdgeEffect(Landroid/content/Context;Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;II)Lcom/miui/home/launcher/search/SearchEdgeEffect;
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/search/FeedSearchEdgeEffect;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/search/FeedSearchEdgeEffect;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;II)V

    return-object v0
.end method
