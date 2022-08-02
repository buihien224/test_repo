.class public Lcom/miui/maml/animation/interpolater/InterpolatorFactory;
.super Ljava/lang/Object;
.source "InterpolatorFactory.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "InterpolatorFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;[Lcom/miui/maml/data/Expression;)Landroid/view/animation/Interpolator;
    .locals 10

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    array-length v3, p1

    if-lez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    const/16 v4, 0x28

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/16 v5, 0x29

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eq v4, v7, :cond_3

    if-eq v5, v7, :cond_3

    add-int/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v7, :cond_2

    invoke-virtual {v4, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v8, v2

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    move v5, v2

    goto :goto_1

    :cond_2
    move-object v7, v5

    move v5, v0

    move-object v0, v4

    :goto_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_4

    :try_start_1
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move v0, v6

    :catch_1
    const-string v7, "InterpolatorFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parse error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v2, v0

    move v5, v2

    move v0, v6

    :cond_4
    :goto_2
    const-string v4, "BackEaseIn"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_5
    const-string v4, "BackEaseOut"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_6
    const-string v4, "BackEaseInOut"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_7
    const-string v4, "BackEaseInOut"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v3, :cond_8

    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_8
    if-eqz v2, :cond_32

    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;

    invoke-direct {p0, v0}, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>(F)V

    return-object p0

    :cond_9
    const-string v4, "BackEaseIn"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz v3, :cond_a

    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_a
    if-eqz v2, :cond_32

    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;

    invoke-direct {p0, v0}, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;-><init>(F)V

    return-object p0

    :cond_b
    const-string v4, "BackEaseOut"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz v3, :cond_c

    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_c
    if-eqz v2, :cond_32

    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;

    invoke-direct {p0, v0}, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>(F)V

    return-object p0

    :cond_d
    const-string v2, "BounceEaseIn"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance p0, Lcom/miui/maml/animation/interpolater/BounceEaseInInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/BounceEaseInInterpolater;-><init>()V

    return-object p0

    :cond_e
    const-string v2, "BounceEaseOut"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance p0, Lcom/miui/maml/animation/interpolater/BounceEaseOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/BounceEaseOutInterpolater;-><init>()V

    return-object p0

    :cond_f
    const-string v2, "BounceEaseInOut"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance p0, Lcom/miui/maml/animation/interpolater/BounceEaseInOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/BounceEaseInOutInterpolater;-><init>()V

    return-object p0

    :cond_10
    const-string v2, "CircEaseIn"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance p0, Lcom/miui/maml/animation/interpolater/CircEaseInInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CircEaseInInterpolater;-><init>()V

    return-object p0

    :cond_11
    const-string v2, "CircEaseOut"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance p0, Lcom/miui/maml/animation/interpolater/CircEaseOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CircEaseOutInterpolater;-><init>()V

    return-object p0

    :cond_12
    const-string v2, "CircEaseInOut"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance p0, Lcom/miui/maml/animation/interpolater/CircEaseInOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CircEaseInOutInterpolater;-><init>()V

    return-object p0

    :cond_13
    const-string v2, "CubicEaseIn"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance p0, Lcom/miui/maml/animation/interpolater/CubicEaseInInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CubicEaseInInterpolater;-><init>()V

    return-object p0

    :cond_14
    const-string v2, "CubicEaseOut"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    new-instance p0, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    return-object p0

    :cond_15
    const-string v2, "CubicEaseInOut"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    new-instance p0, Lcom/miui/maml/animation/interpolater/CubicEaseInOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CubicEaseInOutInterpolater;-><init>()V

    return-object p0

    :cond_16
    const-string v2, "ElasticEaseIn"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_17
    const-string v2, "ElasticEaseOut"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_18
    const-string v2, "ElasticEaseInOut"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_19
    const-string v2, "ElasticEaseInOut"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    if-eqz v3, :cond_1a

    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_1a
    if-eqz v5, :cond_32

    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    invoke-direct {p0, v0, v6}, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>(FF)V

    return-object p0

    :cond_1b
    const-string v2, "ElasticEaseIn"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    if-eqz v3, :cond_1c

    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_1c
    if-eqz v5, :cond_32

    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;

    invoke-direct {p0, v0, v6}, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>(FF)V

    return-object p0

    :cond_1d
    const-string v2, "ElasticEaseOut"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    if-eqz v3, :cond_1e

    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_1e
    if-eqz v5, :cond_32

    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    invoke-direct {p0, v0, v6}, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>(FF)V

    return-object p0

    :cond_1f
    const-string v2, "ExpoEaseIn"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    new-instance p0, Lcom/miui/maml/animation/interpolater/ExpoEaseInInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/ExpoEaseInInterpolater;-><init>()V

    return-object p0

    :cond_20
    const-string v2, "ExpoEaseOut"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    new-instance p0, Lcom/miui/maml/animation/interpolater/ExpoEaseOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/ExpoEaseOutInterpolater;-><init>()V

    return-object p0

    :cond_21
    const-string v2, "ExpoEaseInOut"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    new-instance p0, Lcom/miui/maml/animation/interpolater/ExpoEaseInOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/ExpoEaseInOutInterpolater;-><init>()V

    return-object p0

    :cond_22
    const-string v2, "QuadEaseIn"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    new-instance p0, Lcom/miui/maml/animation/interpolater/QuadEaseInInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuadEaseInInterpolater;-><init>()V

    return-object p0

    :cond_23
    const-string v2, "QuadEaseOut"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    new-instance p0, Lcom/miui/maml/animation/interpolater/QuadEaseOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuadEaseOutInterpolater;-><init>()V

    return-object p0

    :cond_24
    const-string v2, "QuadEaseInOut"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    new-instance p0, Lcom/miui/maml/animation/interpolater/QuadEaseInOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuadEaseInOutInterpolater;-><init>()V

    return-object p0

    :cond_25
    const-string v2, "QuartEaseIn"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    new-instance p0, Lcom/miui/maml/animation/interpolater/QuartEaseInInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuartEaseInInterpolater;-><init>()V

    return-object p0

    :cond_26
    const-string v2, "QuartEaseOut"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    new-instance p0, Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;-><init>()V

    return-object p0

    :cond_27
    const-string v2, "QuartEaseInOut"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    new-instance p0, Lcom/miui/maml/animation/interpolater/QuartEaseInOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuartEaseInOutInterpolater;-><init>()V

    return-object p0

    :cond_28
    const-string v2, "QuintEaseIn"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    new-instance p0, Lcom/miui/maml/animation/interpolater/QuintEaseInInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuintEaseInInterpolater;-><init>()V

    return-object p0

    :cond_29
    const-string v2, "QuintEaseOut"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    new-instance p0, Lcom/miui/maml/animation/interpolater/QuintEaseOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuintEaseOutInterpolater;-><init>()V

    return-object p0

    :cond_2a
    const-string v2, "QuintEaseInOut"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    new-instance p0, Lcom/miui/maml/animation/interpolater/QuintEaseInOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuintEaseInOutInterpolater;-><init>()V

    return-object p0

    :cond_2b
    const-string v2, "SineEaseIn"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    new-instance p0, Lcom/miui/maml/animation/interpolater/SineEaseInInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/SineEaseInInterpolater;-><init>()V

    return-object p0

    :cond_2c
    const-string v2, "SineEaseOut"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    new-instance p0, Lcom/miui/maml/animation/interpolater/SineEaseOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/SineEaseOutInterpolater;-><init>()V

    return-object p0

    :cond_2d
    const-string v2, "SineEaseInOut"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    new-instance p0, Lcom/miui/maml/animation/interpolater/SineEaseInOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/SineEaseInOutInterpolater;-><init>()V

    return-object p0

    :cond_2e
    const-string v2, "Linear"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    new-instance p0, Lcom/miui/maml/animation/interpolater/LinearInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/LinearInterpolater;-><init>()V

    return-object p0

    :cond_2f
    const-string v2, "PhysicBased"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    new-instance p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_30
    const-string v2, "PhysicBased"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_32

    if-eqz v3, :cond_31

    new-instance p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_31
    if-eqz v5, :cond_32

    new-instance p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;

    invoke-direct {p0, v0, v6}, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>(FF)V

    return-object p0

    :cond_32
    return-object v1
.end method
