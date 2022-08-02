.class public Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;
.super Lcom/miui/home/library/utils/FileAccessable$AbstractFileAccessable;
.source "FileAccessable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/utils/FileAccessable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZipInnerFile"
.end annotation


# instance fields
.field mEntryName:Ljava/lang/String;

.field mExists:Z

.field mIsFolder:Z

.field mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/library/utils/FileAccessable$AbstractFileAccessable;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->init(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    return-void
.end method

.method private init(Ljava/util/zip/ZipFile;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mExists:Z

    iput-boolean v1, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mIsFolder:Z

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mExists:Z

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mIsFolder:Z

    :cond_4
    :goto_1
    return-void
.end method

.method private static objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public createByExtension(Ljava/lang/String;)Lcom/miui/home/library/utils/FileAccessable;
    .locals 4

    new-instance v0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;

    iget-object v1, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;-><init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    return-object v0
.end method

.method public createBySubpath(Ljava/lang/String;)Lcom/miui/home/library/utils/FileAccessable;
    .locals 4

    new-instance v0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;

    iget-object v1, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;-><init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;

    iget-object v1, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v2, p1, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-static {v1, v2}, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public exists()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mExists:Z

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3

    iget-boolean v0, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mExists:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mIsFolder:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1

    :cond_0
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public isFile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mIsFolder:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public list()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/library/utils/FileAccessable;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mExists:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mIsFolder:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_0

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;

    iget-object v4, p0, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-direct {v3, v4, v5}, Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;-><init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method
