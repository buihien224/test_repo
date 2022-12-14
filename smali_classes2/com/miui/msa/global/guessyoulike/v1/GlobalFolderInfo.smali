.class public Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;
.super Ljava/lang/Object;
.source "GlobalFolderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field folderTitle:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field packages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tagIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo$1;

    invoke-direct {v0}, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo$1;-><init>()V

    sput-object v0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->packages:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->packages:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->packages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->folderTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->tagIds:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFolderTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->folderTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->packages:Ljava/util/List;

    return-object v0
.end method

.method public getTagIds()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->tagIds:[Ljava/lang/String;

    return-object v0
.end method

.method public setFolderTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->folderTitle:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPackages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->packages:Ljava/util/List;

    return-void
.end method

.method public setTagIds([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->tagIds:[Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->packages:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->folderTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->tagIds:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
