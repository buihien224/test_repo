.class public Lcom/miui/home/smallwindow/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# instance fields
.field private final mBadge:Landroid/graphics/drawable/Drawable;

.field private mBadgeImage:Landroid/widget/ImageView;

.field private mClassName:Ljava/lang/String;

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private mPackageName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/smallwindow/ItemInfo;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/home/smallwindow/ItemInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/miui/home/smallwindow/ItemInfo;->mBadge:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/miui/home/smallwindow/ItemInfo;->mPackageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/home/smallwindow/ItemInfo;->mClassName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/home/smallwindow/ItemInfo;->mBadgeImage:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public getBadgeImage()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/smallwindow/ItemInfo;->mBadgeImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/smallwindow/ItemInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/smallwindow/ItemInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/smallwindow/ItemInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setBadgeImage(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/smallwindow/ItemInfo;->mBadgeImage:Landroid/widget/ImageView;

    return-void
.end method
