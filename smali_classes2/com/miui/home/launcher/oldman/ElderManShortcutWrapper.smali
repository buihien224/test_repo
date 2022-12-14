.class public Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;
.super Ljava/lang/Object;
.source "ElderManShortcutWrapper.java"

# interfaces
.implements Lcom/miui/home/launcher/oldman/ElderlyManShortcut;


# instance fields
.field private mShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->mShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method

.method private getColorizedPortraitDrawable(Lcom/miui/home/launcher/Launcher;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->getOrRequestContactColorizedPortraitNum(Lcom/miui/home/launcher/Launcher;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;->getPortraitDrawableRes(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getContactColorizedPortraitNum()I
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->mShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v1, "contact_default_portrait_num"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getOrRequestContactColorizedPortraitNum(Lcom/miui/home/launcher/Launcher;)I
    .locals 3

    invoke-direct {p0}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->getContactColorizedPortraitNum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getContactsColorizedPortraitController()Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;->requestOnePortraitNum()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->setContactColorizedPortraitNum(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getContactsColorizedPortraitController()Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;->usePortraitNum(I)V

    :goto_0
    const-string p1, "ElderlyMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use colorized num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static synthetic lambda$getIconAsync$0(Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->getColorizedPortraitDrawable(Lcom/miui/home/launcher/Launcher;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$getIconAsync$1(Ljava/util/function/Consumer;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private setContactColorizedPortraitNum(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->mShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v1, "contact_default_portrait_num"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public canAcceptByHotSeats()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->mShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->isContactShortcut()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getIconAsync(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/miui/home/launcher/oldman/-$$Lambda$ElderManShortcutWrapper$nhpJL5tqILB5PsLbEjrnL8Vaa5Q;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/oldman/-$$Lambda$ElderManShortcutWrapper$nhpJL5tqILB5PsLbEjrnL8Vaa5Q;-><init>(Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;)V

    new-instance v1, Lcom/miui/home/launcher/oldman/-$$Lambda$ElderManShortcutWrapper$yvvjoLGmSlv7aFNrmxEgjH0sdWk;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/oldman/-$$Lambda$ElderManShortcutWrapper$yvvjoLGmSlv7aFNrmxEgjH0sdWk;-><init>(Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    invoke-static {v0, v1, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public isUseContactColorizedPortrait()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->mShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->isContactShortcut()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->mShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->mShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v2, "is_default_head"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onRemovedFromLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->releaseColorizedPortraitNum(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public releaseColorizedPortraitNum(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->isUseContactColorizedPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getContactsColorizedPortraitController()Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->getContactColorizedPortraitNum()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;->releasePortraitNum(I)V

    :cond_0
    return-void
.end method

.method public setIsElderlyManShortcut(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->mShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v1, "is_elderly_man_shortcut"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method public setUseContactColorizedPortrait(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->mShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v1, "is_default_head"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method
