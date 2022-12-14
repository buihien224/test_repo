.class public Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;
.super Ljava/lang/Object;
.source "CNColudControlInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isCloseAd:Z

.field private isOpenXout:Z

.field private preloadHotValue:I

.field private preloadRecValue:I

.field private queryType:Ljava/lang/String;

.field private xOutProtectionInMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo$1;

    invoke-direct {v0}, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo$1;-><init>()V

    sput-object v0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->queryType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->isCloseAd:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->isOpenXout:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->xOutProtectionInMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->preloadRecValue:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->preloadHotValue:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreloadHotValue()I
    .locals 1

    iget v0, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->preloadHotValue:I

    return v0
.end method

.method public getPreloadRecValue()I
    .locals 1

    iget v0, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->preloadRecValue:I

    return v0
.end method

.method public getQueryType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->queryType:Ljava/lang/String;

    return-object v0
.end method

.method public getxOutProtectionInMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->xOutProtectionInMillis:J

    return-wide v0
.end method

.method public isCloseAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->isCloseAd:Z

    return v0
.end method

.method public isOpenXout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->isOpenXout:Z

    return v0
.end method

.method public setCloseAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->isCloseAd:Z

    return-void
.end method

.method public setOpenXout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->isOpenXout:Z

    return-void
.end method

.method public setPreloadHotValue(I)V
    .locals 0

    iput p1, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->preloadHotValue:I

    return-void
.end method

.method public setPreloadRecValue(I)V
    .locals 0

    iput p1, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->preloadRecValue:I

    return-void
.end method

.method public setQueryType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->queryType:Ljava/lang/String;

    return-void
.end method

.method public setxOutProtectionInMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->xOutProtectionInMillis:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CNColudControlInfo{queryType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->queryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isCloseAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->isCloseAd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isOpenXout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->isOpenXout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", xOutProtectionInMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->xOutProtectionInMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", preloadRecValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->preloadRecValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", preloadHotValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->preloadHotValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->queryType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->isCloseAd:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->isOpenXout:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->xOutProtectionInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->preloadRecValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->preloadHotValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
