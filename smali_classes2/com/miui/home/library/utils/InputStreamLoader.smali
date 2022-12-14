.class public Lcom/miui/home/library/utils/InputStreamLoader;
.super Ljava/lang/Object;
.source "InputStreamLoader.java"


# instance fields
.field mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

.field private mContext:Landroid/content/Context;

.field private mFileAccessable:Lcom/miui/home/library/utils/FileAccessable;

.field private mInputStream:Ljava/io/InputStream;

.field private mPath:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mZipFile:Ljava/util/zip/ZipFile;

.field private mZipPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mUri:Landroid/net/Uri;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/miui/home/library/utils/FileAccessable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mFileAccessable:Lcom/miui/home/library/utils/FileAccessable;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public get()Ljava/io/InputStream;
    .locals 3

    invoke-virtual {p0}, Lcom/miui/home/library/utils/InputStreamLoader;->close()V

    :try_start_0
    iget-object v0, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mFileAccessable:Lcom/miui/home/library/utils/FileAccessable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mFileAccessable:Lcom/miui/home/library/utils/FileAccessable;

    invoke-interface {v0}, Lcom/miui/home/library/utils/FileAccessable;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mZipPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mZipPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v0, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->reset()V

    iget-object v0, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    iput-object v0, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_5

    instance-of v1, v0, Ljava/io/ByteArrayInputStream;

    if-nez v1, :cond_5

    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x4000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    :cond_5
    iget-object v0, p0, Lcom/miui/home/library/utils/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method
