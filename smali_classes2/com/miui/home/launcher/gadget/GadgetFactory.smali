.class public Lcom/miui/home/launcher/gadget/GadgetFactory;
.super Ljava/lang/Object;
.source "GadgetFactory.java"


# static fields
.field private static final GADGET_ID_LIST:[Ljava/lang/Integer;

.field private static final ICON_STYLE_ID_LIST:[I

.field private static sMtzGadgetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/gadget/GadgetInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v0, v5

    sput-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->GADGET_ID_LIST:[Ljava/lang/Integer;

    new-array v0, v4, [I

    aput v1, v0, v3

    sput-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->ICON_STYLE_ID_LIST:[I

    return-void
.end method

.method public static createGadget(Landroid/content/Context;Lcom/miui/home/launcher/gadget/GadgetInfo;)Lcom/miui/home/launcher/gadget/Gadget;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    check-cast v0, Lcom/miui/home/launcher/gadget/Gadget;

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/16 v2, 0x15

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/miui/home/launcher/gadget/MtzGadget;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/gadget/MtzGadget;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/gadget/GadgetInfo;)V

    goto :goto_0

    :pswitch_0
    const-string v1, "support_power_clean"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/miui/home/library/utils/MiuiFeatureUtils;->isLocalFeatureSupported(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/miui/home/launcher/gadget/PowerClearButton;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/PowerClearButton;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/miui/home/launcher/gadget/GoogleSearch;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/GoogleSearch;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/miui/home/launcher/gadget/NormalClearButton;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/NormalClearButton;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/miui/home/launcher/gadget/CommonGlobalSearch;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/CommonGlobalSearch;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    :pswitch_3
    new-instance v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;-><init>(Landroid/content/Context;)V

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_4
    check-cast v0, Lcom/miui/home/launcher/gadget/Gadget;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createGadgetForSnapshot(Landroid/content/Context;Lcom/miui/home/launcher/gadget/GadgetInfo;)Lcom/miui/home/launcher/gadget/Gadget;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    check-cast p0, Lcom/miui/home/launcher/gadget/Gadget;

    return-object p0

    :cond_0
    new-instance v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    check-cast v0, Lcom/miui/home/launcher/gadget/Gadget;

    return-object v0
.end method

.method public static getAllGadgetNum()I
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->sMtzGadgetList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->GADGET_ID_LIST:[Ljava/lang/Integer;

    array-length v0, v0

    return v0

    :cond_0
    sget-object v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->GADGET_ID_LIST:[Ljava/lang/Integer;

    array-length v1, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public static getClockTypeFromGadgetId(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "3x4"

    return-object p0

    :pswitch_1
    const-string p0, "1x4"

    return-object p0

    :pswitch_2
    const-string p0, "2x4"

    return-object p0

    :pswitch_3
    const-string p0, "2x2"

    return-object p0

    :pswitch_4
    const-string p0, "1x2"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDualClockInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;
    .locals 10

    const/4 v0, 0x6

    const/4 v8, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_0

    :cond_0
    new-instance v9, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v2, 0x4

    const/4 v3, 0x3

    const v4, 0x7f110214

    const v5, 0x7f08025d

    const v6, 0x7f08025c

    const/4 v7, 0x2

    move-object v0, v9

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(IIIIIII)V

    invoke-virtual {v9, v8}, Lcom/miui/home/launcher/gadget/GadgetInfo;->setIsDualClock(Z)V

    goto :goto_0

    :cond_1
    new-instance v9, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v2, 0x4

    const/4 v3, 0x2

    const v4, 0x7f110214

    const v5, 0x7f08025d

    const v6, 0x7f08025c

    const/4 v7, 0x2

    move-object v0, v9

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(IIIIIII)V

    invoke-virtual {v9, v8}, Lcom/miui/home/launcher/gadget/GadgetInfo;->setIsDualClock(Z)V

    :goto_0
    return-object v9
.end method

.method public static getGadgeInfo(ILjava/lang/String;)Lcom/miui/home/launcher/gadget/GadgetInfo;
    .locals 2

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getMtzInfo(Landroid/net/Uri;)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object p0

    return-object p0

    :cond_0
    if-ge p0, v0, :cond_1

    invoke-static {p0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getNoMtzInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getGadgetDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "gadget"

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->TEMP_SHARE_MODE_FOR_WORLD_READABLE:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGadgetInfoByIndex(I)Lcom/miui/home/launcher/gadget/GadgetInfo;
    .locals 2

    if-ltz p0, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getAllGadgetNum()I

    move-result v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->GADGET_ID_LIST:[Ljava/lang/Integer;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object p0, v0, p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getNoMtzInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->sMtzGadgetList:Ljava/util/ArrayList;

    array-length v0, v0

    sub-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMtzInfo(Landroid/net/Uri;)Lcom/miui/home/launcher/gadget/GadgetInfo;
    .locals 3

    sget-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->sMtzGadgetList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->clone()Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(I)V

    return-object p0
.end method

.method public static final getNoMtzGadgetInfos()[Lcom/miui/home/launcher/gadget/GadgetInfo;
    .locals 4

    sget-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->GADGET_ID_LIST:[Ljava/lang/Integer;

    array-length v0, v0

    new-array v0, v0, [Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/miui/home/launcher/gadget/GadgetFactory;->GADGET_ID_LIST:[Ljava/lang/Integer;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getNoMtzInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getNoMtzInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;
    .locals 9

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 v0, 0x0

    move-object v8, v0

    goto/16 :goto_0

    :pswitch_0
    new-instance v8, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const v4, 0x7f11021e

    const v5, 0x7f08026d

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(IIIIIII)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v8, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const v4, 0x7f110216

    const v5, 0x7f080268

    const v6, 0x7f080269

    const/4 v7, 0x5

    move-object v0, v8

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(IIIIIII)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v8, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const v4, 0x7f11020d

    const v5, 0x7f080258

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(IIIIIII)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v8, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v2, 0x4

    const/4 v3, 0x3

    const v4, 0x7f110212

    const v5, 0x7f08025d

    const v6, 0x7f08025f

    const/4 v7, 0x2

    move-object v0, v8

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(IIIIIII)V

    goto :goto_0

    :pswitch_4
    new-instance v8, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const v4, 0x7f110212

    const v5, 0x7f08025d

    const v6, 0x7f08025e

    const/4 v7, 0x2

    move-object v0, v8

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(IIIIIII)V

    goto :goto_0

    :pswitch_5
    new-instance v8, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v2, 0x4

    const/4 v3, 0x2

    const v4, 0x7f110212

    const v5, 0x7f08025d

    const v6, 0x7f08025e

    const/4 v7, 0x2

    move-object v0, v8

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(IIIIIII)V

    goto :goto_0

    :cond_0
    new-instance v8, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const v4, 0x7f110213

    const v5, 0x7f080261

    const v6, 0x7f080262

    const/4 v7, 0x5

    move-object v0, v8

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(IIIIIII)V

    goto :goto_0

    :cond_1
    new-instance v8, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const v4, 0x7f110212

    const v5, 0x7f08025b

    const/4 v6, -0x1

    const/4 v7, 0x2

    move-object v0, v8

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(IIIIIII)V

    :goto_0
    return-object v8

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getThemeClockGadgetInfo(Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;)Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;
    .locals 10

    new-instance v9, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;

    const/4 v1, 0x6

    const/4 v2, 0x4

    const/4 v3, 0x2

    const v4, 0x7f110210

    const v5, 0x7f08025d

    const v6, 0x7f08025e

    const/4 v7, 0x2

    move-object v0, v9

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;-><init>(IIIIIIILcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;)V

    return-object v9
.end method

.method public static loadMtzGadgetList()V
    .locals 6

    sget-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->sMtzGadgetList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->sMtzGadgetList:Ljava/util/ArrayList;

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/theme/default/gadgets"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mtz"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/16 v5, 0x3e8

    invoke-direct {v4, v5}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(I)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->loadMtzGadgetFromUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/miui/home/launcher/gadget/GadgetFactory;->sMtzGadgetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static resetMtzGadgetList()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->sMtzGadgetList:Ljava/util/ArrayList;

    return-void
.end method

.method public static updateGadgetBackup(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/home/launcher/gadget/DualClockUtils;->updateBackup(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->updateBackup(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
