.class public Lcom/miui/home/settings/DeleteAppInfo;
.super Ljava/lang/Object;
.source "DeleteAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/settings/DeleteAppInfo$FromType;
    }
.end annotation


# instance fields
.field private fromType:Lcom/miui/home/settings/DeleteAppInfo$FromType;

.field private iconResource:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private status:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/miui/home/settings/DeleteAppInfo$FromType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/settings/DeleteAppInfo;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/miui/home/settings/DeleteAppInfo;->status:I

    iput-object p3, p0, Lcom/miui/home/settings/DeleteAppInfo;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/home/settings/DeleteAppInfo;->iconResource:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/home/settings/DeleteAppInfo;->fromType:Lcom/miui/home/settings/DeleteAppInfo$FromType;

    return-void
.end method


# virtual methods
.method public getFromType()Lcom/miui/home/settings/DeleteAppInfo$FromType;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/settings/DeleteAppInfo;->fromType:Lcom/miui/home/settings/DeleteAppInfo$FromType;

    return-object v0
.end method

.method public getIconResource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/settings/DeleteAppInfo;->iconResource:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/settings/DeleteAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/miui/home/settings/DeleteAppInfo;->status:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/settings/DeleteAppInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/miui/home/settings/DeleteAppInfo;->status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteAppInfo{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/settings/DeleteAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/settings/DeleteAppInfo;->status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/settings/DeleteAppInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", iconResource=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/settings/DeleteAppInfo;->iconResource:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
