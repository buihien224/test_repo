.class Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;
.super Ljava/util/HashMap;
.source "HotSeatsListRecentsAppProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PairShortcutCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Landroid/os/UserHandle;",
        "Ljava/util/HashMap<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/miui/home/launcher/PairShortcutInfo;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroupShortcutInfo(Lcom/miui/home/launcher/PairShortcutInfo;)Lcom/miui/home/launcher/PairShortcutInfo;
    .locals 5

    invoke-virtual {p1}, Lcom/miui/home/launcher/PairShortcutInfo;->getShortcutInfo1()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/PairShortcutInfo;->getShortcutInfo2()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/PairShortcutInfo;->hasPairApp()Z

    move-result p1

    iget-object v2, v0, Lcom/miui/home/launcher/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/PairShortcutInfo;

    if-nez p1, :cond_2

    new-instance p1, Lcom/miui/home/launcher/PairShortcutInfo;

    invoke-direct {p1, v0, v1}, Lcom/miui/home/launcher/PairShortcutInfo;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1
.end method
