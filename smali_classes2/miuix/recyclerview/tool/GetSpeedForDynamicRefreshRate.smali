.class public Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;
.super Ljava/lang/Object;
.source "GetSpeedForDynamicRefreshRate.java"


# static fields
.field private static sControlViewHashCode:I

.field private static sHasGetProperty:Z

.field private static sRefreshRateList:[I

.field private static sRefreshRateSpeedLimits:[I


# instance fields
.field private mCountIndex:I

.field private mCurrentRefreshRate:I

.field private final mDisplay:Landroid/view/Display;

.field private mHasFocus:Z

.field private final mIsEnable:Z

.field private volatile mIsTouch:Z

.field private mNeedAbandon:Z

.field private mOldScrollState:I

.field private mStartTime:J

.field private mTotalDistance:J

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lmiuix/recyclerview/widget/RecyclerView;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsTouch:Z

    iput-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mHasFocus:Z

    iput v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCountIndex:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mStartTime:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mTotalDistance:J

    iput-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mNeedAbandon:Z

    iput v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mOldScrollState:I

    invoke-virtual {p1}, Lmiuix/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lmiuix/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Lmiuix/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lmiuix/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    :cond_1
    iput-object v2, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mWindow:Landroid/view/Window;

    invoke-static {}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->getParam()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mDisplay:Landroid/view/Display;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mWindow:Landroid/view/Window;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsEnable:Z

    iget-boolean p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsEnable:Z

    if-nez p1, :cond_3

    const-string p1, "DynamicRefreshRate recy"

    const-string v0, "dynamic is not enable"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    sget-object p1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    aget p1, p1, v0

    iput p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCurrentRefreshRate:I

    return-void
.end method

.method private calculateRefreshRate(I)I
    .locals 7

    sget-object v0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iget-boolean v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mHasFocus:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mNeedAbandon:Z

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    if-nez p1, :cond_1

    return v0

    :cond_1
    iget v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCountIndex:I

    if-nez v1, :cond_2

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mTotalDistance:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mStartTime:J

    :cond_2
    iget v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCountIndex:I

    iget-wide v3, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mTotalDistance:J

    int-to-long v5, p1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mTotalDistance:J

    iget p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCountIndex:I

    const/4 v1, 0x3

    if-ge p1, v1, :cond_3

    return v2

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mStartTime:J

    sub-long/2addr v3, v5

    long-to-float p1, v3

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    iget-wide v3, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mTotalDistance:J

    long-to-float v1, v3

    div-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v1, 0x0

    iput v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCountIndex:I

    move v3, v1

    :goto_0
    sget-object v4, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    array-length v5, v4

    if-ge v3, v5, :cond_5

    aget v4, v4, v3

    if-le p1, v4, :cond_4

    sget-object p1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    aget v0, p1, v3

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    iget p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCurrentRefreshRate:I

    if-lt v0, p1, :cond_7

    sget-object v3, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget v4, v3, v4

    if-ne p1, v4, :cond_6

    aget p1, v3, v1

    if-ne v0, p1, :cond_6

    goto :goto_2

    :cond_6
    return v2

    :cond_7
    :goto_2
    iput v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCurrentRefreshRate:I

    return v0

    :cond_8
    :goto_3
    return v2
.end method

.method private static getParam()Z
    .locals 8

    sget-boolean v0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "get"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "ro.vendor.display.dynamic_refresh_rate"

    aput-object v5, v4, v1

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    const-string v0, "DynamicRefreshRate recy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dynamic params is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    if-eqz v4, :cond_2

    sget-object v4, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    return v1

    :cond_3
    :try_start_1
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    const-string v0, "DynamicRefreshRate recy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dynamic params is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    if-eqz v4, :cond_4

    sget-object v4, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    return v1

    :cond_5
    :try_start_2
    aget-object v4, v3, v1

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v3, v2

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    array-length v6, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v6, v2

    if-eq v5, v6, :cond_7

    const-string v0, "DynamicRefreshRate recy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dynamic params is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    if-eqz v4, :cond_6

    sget-object v4, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    if-eqz v4, :cond_6

    move v4, v2

    goto :goto_2

    :cond_6
    move v4, v1

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    return v1

    :cond_7
    :try_start_3
    array-length v5, v4

    new-array v5, v5, [I

    sput-object v5, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    move v5, v1

    :goto_3
    array-length v6, v4

    if-ge v5, v6, :cond_8

    sget-object v6, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    aget-object v7, v4, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    array-length v4, v3

    new-array v4, v4, [I

    sput-object v4, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    move v4, v1

    :goto_4
    array-length v5, v3

    if-ge v4, v5, :cond_9

    sget-object v5, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    aget-object v6, v3, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    const-string v0, "DynamicRefreshRate recy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dynamic params is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    if-eqz v4, :cond_a

    sget-object v4, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    if-eqz v4, :cond_a

    move v1, v2

    :cond_a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    return v2

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v3

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v3, "DynamicRefreshRate recy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dynamic params is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    if-eqz v5, :cond_b

    sget-object v5, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    if-eqz v5, :cond_b

    move v5, v2

    goto :goto_5

    :cond_b
    move v5, v1

    :goto_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    sput-object v0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    sput-object v0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    return v1

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dynamic params is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    if-eqz v4, :cond_c

    sget-object v4, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    if-eqz v4, :cond_c

    move v1, v2

    :cond_c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DynamicRefreshRate recy"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    throw v0
.end method

.method private setRefreshRate(IZ)V
    .locals 9

    iget-object v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    iget-object v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    if-eqz v2, :cond_0

    add-int/lit8 v4, v2, -0x1

    aget-object v4, v0, v4

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    int-to-float v5, p1

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v3

    if-gez v4, :cond_0

    return-void

    :cond_0
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5

    invoke-virtual {v6}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v7

    int-to-float v8, p1

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v3

    if-lez v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    sget v3, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sControlViewHashCode:I

    if-eq p2, v3, :cond_2

    invoke-virtual {v6}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p2

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_3

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    sput p2, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sControlViewHashCode:I

    const-string p2, "DynamicRefreshRate recy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sControlViewHashCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " set Refresh rate to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mode is: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    iget-object p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mWindow:Landroid/view/Window;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public calculateSpeed(II)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsEnable:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    iget-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsTouch:Z

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->calculateRefreshRate(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->setRefreshRate(IZ)V

    :cond_2
    return-void
.end method

.method public onFocusChange(Z)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mHasFocus:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mNeedAbandon:Z

    sget-object p1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-direct {p0, p1, v0}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->setRefreshRate(IZ)V

    return-void
.end method

.method public scrollState(Lmiuix/recyclerview/widget/RecyclerView;I)V
    .locals 2

    iget-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mNeedAbandon:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsTouch:Z

    if-nez v0, :cond_5

    iget v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mOldScrollState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iput p2, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mOldScrollState:I

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lmiuix/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Lmiuix/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p1, p2}, Lmiuix/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1, v1}, Lmiuix/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    sget-object p1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    array-length p2, p1

    sub-int/2addr p2, v1

    aget p1, p1, p2

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->setRefreshRate(IZ)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    iput p2, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mOldScrollState:I

    return-void
.end method

.method public touchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    iget-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsTouch:Z

    sget-object p1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    aget v0, p1, v2

    iput v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCurrentRefreshRate:I

    iput v2, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCountIndex:I

    aget p1, p1, v2

    invoke-direct {p0, p1, v1}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->setRefreshRate(IZ)V

    iput-boolean v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mHasFocus:Z

    iput-boolean v2, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mNeedAbandon:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_2

    iput-boolean v2, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsTouch:Z

    :cond_2
    :goto_0
    return-void
.end method
