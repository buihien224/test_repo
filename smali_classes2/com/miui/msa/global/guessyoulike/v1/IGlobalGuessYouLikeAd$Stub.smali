.class public abstract Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub;
.super Landroid/os/Binder;
.source "IGlobalGuessYouLikeAd.java"

# interfaces
.implements Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.msa.global.guessyoulike.v1.IGlobalGuessYouLikeAd"

.field static final TRANSACTION_getGameFolders:I = 0x7

.field static final TRANSACTION_getGlobalColudControl:I = 0x6

.field static final TRANSACTION_handleClick:I = 0x4

.field static final TRANSACTION_handleDislike:I = 0x5

.field static final TRANSACTION_handleView:I = 0x3

.field static final TRANSACTION_loadDesktopRecommendAdInfo:I = 0x1

.field static final TRANSACTION_loadImage:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.msa.global.guessyoulike.v1.IGlobalGuessYouLikeAd"

    invoke-virtual {p0, p0, v0}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.miui.msa.global.guessyoulike.v1.IGlobalGuessYouLikeAd"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    const-string p1, "com.miui.msa.global.guessyoulike.v1.IGlobalGuessYouLikeAd"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub;->getGameFolders(Ljava/util/Map;Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    :pswitch_1
    const-string p1, "com.miui.msa.global.guessyoulike.v1.IGlobalGuessYouLikeAd"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub;->getGlobalColudControl()Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p3, v1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    :pswitch_2
    const-string p1, "com.miui.msa.global.guessyoulike.v1.IGlobalGuessYouLikeAd"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub;->handleDislike(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    const-string p1, "com.miui.msa.global.guessyoulike.v1.IGlobalGuessYouLikeAd"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object p1, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, p1, p4, v2, v3}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub;->handleClick(Ljava/util/List;IJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    const-string p1, "com.miui.msa.global.guessyoulike.v1.IGlobalGuessYouLikeAd"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;

    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub;->handleView(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_5
    const-string p1, "com.miui.msa.global.guessyoulike.v1.IGlobalGuessYouLikeAd"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalImageCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/msa/global/guessyoulike/v1/IGlobalImageCallback;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub;->loadImage(Ljava/lang/String;Lcom/miui/msa/global/guessyoulike/v1/IGlobalImageCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_6
    const-string p1, "com.miui.msa.global.guessyoulike.v1.IGlobalGuessYouLikeAd"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;

    :cond_4
    invoke-virtual {p0, v2}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub;->loadDesktopRecommendAdInfo(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    :cond_5
    const-string p1, "com.miui.msa.global.guessyoulike.v1.IGlobalGuessYouLikeAd"

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
