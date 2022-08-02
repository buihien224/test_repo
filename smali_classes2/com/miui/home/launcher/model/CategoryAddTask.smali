.class public Lcom/miui/home/launcher/model/CategoryAddTask;
.super Lcom/miui/home/launcher/model/DatabaseUpdateTask;
.source "CategoryAddTask.java"


# instance fields
.field private final mApps:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/home/launcher/model/DatabaseUpdateTask;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/model/CategoryAddTask;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/home/launcher/model/CategoryAddTask;->mApps:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/home/launcher/model/CategoryAddTask;->bindCategoryAdded()V

    return-void
.end method

.method public executeDatabase(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AllCategoryList;)Z
    .locals 3

    invoke-static {}, Lcom/miui/home/launcher/CategorySettingHelper;->getInstance()Lcom/miui/home/launcher/CategorySettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CategorySettingHelper;->disableAppCategoryUpdateEnable()V

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getCategoryProvider()Lcom/miui/home/launcher/CategoryProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/CategoryProvider;->generateNewCategoryId()I

    move-result p2

    invoke-virtual {p3}, Lcom/miui/home/launcher/AllCategoryList;->generateFirstPriority()I

    move-result v0

    new-instance v1, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/model/CategoryAddTask;->mName:Ljava/lang/String;

    invoke-direct {v1, p2, v2, v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;-><init>(ILjava/lang/String;I)V

    invoke-static {p1, v1}, Lcom/miui/home/launcher/LauncherCategory$Category;->addCustomAppCategory(Landroid/content/ContentResolver;Lcom/miui/home/launcher/allapps/category/CategoryInfo;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p3, v1}, Lcom/miui/home/launcher/AllCategoryList;->addCategory(Lcom/miui/home/launcher/allapps/category/CategoryInfo;)V

    iget-object p3, p0, Lcom/miui/home/launcher/model/CategoryAddTask;->mApps:Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lcom/miui/home/launcher/LauncherCategory$Favorites;->addAppCategoryConfig(Landroid/content/ContentResolver;Lcom/miui/home/launcher/util/ComponentKey;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/AppInfo;->addCategory(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
