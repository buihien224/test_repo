.class public abstract Lcom/miui/home/launcher/upsidescene/data/Appearance;
.super Ljava/lang/Object;
.source "Appearance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/upsidescene/data/Appearance$FreeButtonAppearance;,
        Lcom/miui/home/launcher/upsidescene/data/Appearance$StageImageAppearance;,
        Lcom/miui/home/launcher/upsidescene/data/Appearance$NoneAppearance;
    }
.end annotation


# instance fields
.field mFreeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

.field mPath:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/Appearance;->mPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/home/launcher/upsidescene/data/Appearance;->mFreeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/FreeStyle;Lcom/miui/home/launcher/upsidescene/data/Appearance$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/upsidescene/data/Appearance;-><init>(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V

    return-void
.end method

.method public static load(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)Lcom/miui/home/launcher/upsidescene/data/Appearance;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/miui/home/launcher/upsidescene/data/Appearance$NoneAppearance;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/data/Appearance$NoneAppearance;-><init>(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V

    return-object p0

    :cond_0
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "FreeStyle.Appearance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse appearance path failed:not found /. path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/miui/home/launcher/upsidescene/data/Appearance$NoneAppearance;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/data/Appearance$NoneAppearance;-><init>(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V

    return-object p0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "stage_images"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/Appearance$StageImageAppearance;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/upsidescene/data/Appearance$StageImageAppearance;-><init>(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V

    return-object v0

    :cond_2
    const-string v2, "skins"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p0, Lcom/miui/home/launcher/upsidescene/data/Appearance$FreeButtonAppearance;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/upsidescene/data/Appearance$FreeButtonAppearance;-><init>(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V

    return-object p0

    :cond_3
    const-string v0, "FreeStyle.Appearance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown appearance path prefix. path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/miui/home/launcher/upsidescene/data/Appearance$NoneAppearance;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/data/Appearance$NoneAppearance;-><init>(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V

    return-object p0
.end method


# virtual methods
.method public abstract getType()I
.end method

.method public setFreeStyle(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/Appearance;->mFreeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Appearance;->mPath:Ljava/lang/String;

    return-object v0
.end method
