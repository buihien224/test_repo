.class public Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;
.super Ljava/lang/Object;
.source "GlobalCloudAdConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private count:I

.field private isCloseAd:Z

.field private tagId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig$1;

    invoke-direct {v0}, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig$1;-><init>()V

    sput-object v0, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;->tagId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;->isCloseAd:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;->count:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;->count:I

    return v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;->tagId:Ljava/lang/String;

    return-object v0
.end method

.method public isCloseAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;->isCloseAd:Z

    return v0
.end method

.method public setCloseAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;->isCloseAd:Z

    return-void
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;->count:I

    return-void
.end method

.method public setTagId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;->tagId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;->tagId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;->isCloseAd:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;->count:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
