.class public Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;
.super Ljava/lang/Object;
.source "GlobalFolderRecommendAdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private apkSize:J

.field private appName:Ljava/lang/String;

.field private cacheTime:J

.field private categoryName:Ljava/lang/String;

.field private clickMonitorUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private endTimeInMills:J

.field private ex:Ljava/lang/String;

.field private iconUri:Ljava/lang/String;

.field private id:J

.field private landingPage:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private passback:Ljava/lang/String;

.field private showAdMark:I

.field private summary:Ljava/lang/String;

.field private tagId:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private viewMonitorUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo$1;

    invoke-direct {v0}, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo$1;-><init>()V

    sput-object v0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->id:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->summary:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->iconUri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->ex:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->passback:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->apkSize:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->categoryName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->appName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->tagId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->landingPage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->showAdMark:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->cacheTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->endTimeInMills:J

    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApkSize()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->apkSize:J

    return-wide v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->cacheTime:J

    return-wide v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getClickMonitorUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    return-object v0
.end method

.method public getEndTimeInMills()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->endTimeInMills:J

    return-wide v0
.end method

.method public getEx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->ex:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->iconUri:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->id:J

    return-wide v0
.end method

.method public getLandingPage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->landingPage:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->passback:Ljava/lang/String;

    return-object v0
.end method

.method public getShowAdMark()I
    .locals 1

    iget v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->showAdMark:I

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->tagId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getViewMonitorUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    return-object v0
.end method

.method public setApkSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->apkSize:J

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->appName:Ljava/lang/String;

    return-void
.end method

.method public setCacheTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->cacheTime:J

    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->categoryName:Ljava/lang/String;

    return-void
.end method

.method public setClickMonitorUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    return-void
.end method

.method public setEndTimeInMills(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->endTimeInMills:J

    return-void
.end method

.method public setEx(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->ex:Ljava/lang/String;

    return-void
.end method

.method public setIconUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->iconUri:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->id:J

    return-void
.end method

.method public setLandingPage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->landingPage:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPassback(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->passback:Ljava/lang/String;

    return-void
.end method

.method public setShowAdMark(I)V
    .locals 0

    iput p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->showAdMark:I

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->summary:Ljava/lang/String;

    return-void
.end method

.method public setTagId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->tagId:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setViewMonitorUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlobalFolderRecommendAdInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", summary=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->summary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", iconUri=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->iconUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ex=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->ex:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", passback=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->passback:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", apkSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->apkSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", categoryName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->categoryName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tagId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->tagId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", cacheTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->cacheTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTimeInMills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->endTimeInMills:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", viewMonitorUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clickMonitorUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->summary:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->iconUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->ex:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->passback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->apkSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->categoryName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->appName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->tagId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->landingPage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->showAdMark:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->cacheTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->endTimeInMills:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
