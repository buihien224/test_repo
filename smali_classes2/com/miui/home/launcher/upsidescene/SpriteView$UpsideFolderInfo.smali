.class Lcom/miui/home/launcher/upsidescene/SpriteView$UpsideFolderInfo;
.super Lcom/miui/home/launcher/FolderInfo;
.source "SpriteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/SpriteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpsideFolderInfo"
.end annotation


# instance fields
.field mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

.field mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/upsidescene/data/Sprite;Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/FolderInfo;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView$UpsideFolderInfo;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    iput-object p2, p0, Lcom/miui/home/launcher/upsidescene/SpriteView$UpsideFolderInfo;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    return-void
.end method


# virtual methods
.method public setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V

    iget-object p2, p0, Lcom/miui/home/launcher/upsidescene/SpriteView$UpsideFolderInfo;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {p2}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;->setFolderName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView$UpsideFolderInfo;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->save()V

    return-void
.end method
