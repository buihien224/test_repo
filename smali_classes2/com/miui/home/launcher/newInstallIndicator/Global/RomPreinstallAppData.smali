.class public Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;
.super Ljava/lang/Object;
.source "RomPreinstallAppData.java"


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mContainer:Ljava/lang/String;

.field private mIsShowNewInstallIndicator:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "default"

    iput-object v0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mContainer:Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mComponentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mContainer:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mIsShowNewInstallIndicator:Z

    return-void
.end method

.method public static build(Landroid/database/Cursor;)Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;
    .locals 5

    const-string v0, "package"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "className"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "emptyClassName"

    :cond_1
    new-instance v2, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;

    const-string v3, "folderId"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dot"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 v4, 0x1

    if-ne p0, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v2, v0, v1, v3, v4}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContainer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mContainer:Ljava/lang/String;

    return-object v0
.end method

.method public getFoldeTitle()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mContainer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0xef21700

    if-eq v1, v2, :cond_1

    const v2, 0x64ff9c4a

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "recommendFolder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "gameFolder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "com.miui.home:string/default_folder_title_game"

    return-object v0

    :pswitch_1
    const-string v0, "com.miui.home:string/default_folder_title_recommend"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortComponentName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-static {v0, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInFolder()Z
    .locals 2

    const-string v0, "recommendFolder"

    iget-object v1, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mContainer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gameFolder"

    iget-object v1, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mContainer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isShowNewInstallIndicator()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mIsShowNewInstallIndicator:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mContainer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isShowIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mIsShowNewInstallIndicator:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
