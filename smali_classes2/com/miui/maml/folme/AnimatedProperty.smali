.class public abstract Lcom/miui/maml/folme/AnimatedProperty;
.super Lmiuix/animation/property/FloatProperty;
.source "AnimatedProperty.java"

# interfaces
.implements Lcom/miui/maml/folme/IAnimatedProperty;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/property/FloatProperty<",
        "Lcom/miui/maml/elements/AnimatedScreenElement;",
        ">;",
        "Lcom/miui/maml/folme/IAnimatedProperty<",
        "Lcom/miui/maml/elements/AnimatedScreenElement;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALPHA:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final HEIGHT:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final PIVOT_X:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final PIVOT_Y:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final PIVOT_Z:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final PROPERTY_NAME_ALPHA:Ljava/lang/String; = "alpha"

.field public static final PROPERTY_NAME_H:Ljava/lang/String; = "h"

.field public static final PROPERTY_NAME_PIVOT_X:Ljava/lang/String; = "pivotX"

.field public static final PROPERTY_NAME_PIVOT_Y:Ljava/lang/String; = "pivotY"

.field public static final PROPERTY_NAME_PIVOT_Z:Ljava/lang/String; = "pivotZ"

.field public static final PROPERTY_NAME_ROTATION:Ljava/lang/String; = "rotation"

.field public static final PROPERTY_NAME_ROTATION_X:Ljava/lang/String; = "rotationX"

.field public static final PROPERTY_NAME_ROTATION_Y:Ljava/lang/String; = "rotationY"

.field public static final PROPERTY_NAME_ROTATION_Z:Ljava/lang/String; = "rotationZ"

.field public static final PROPERTY_NAME_SCALE_X:Ljava/lang/String; = "scaleX"

.field public static final PROPERTY_NAME_SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final PROPERTY_NAME_TINT_COLOR:Ljava/lang/String; = "tintColor"

.field public static final PROPERTY_NAME_W:Ljava/lang/String; = "w"

.field public static final PROPERTY_NAME_X:Ljava/lang/String; = "x"

.field public static final PROPERTY_NAME_Y:Ljava/lang/String; = "y"

.field public static final ROTATION:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final ROTATION_X:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final ROTATION_Y:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final ROTATION_Z:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final SCALE_X:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final SCALE_Y:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final TINT_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final WIDTH:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final X:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final Y:Lcom/miui/maml/folme/AnimatedProperty;

.field public static sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lmiuix/animation/property/FloatProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/miui/maml/folme/AnimatedProperty$1;

    const-string v1, "x"

    invoke-direct {v0, v1}, Lcom/miui/maml/folme/AnimatedProperty$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/folme/AnimatedProperty;->X:Lcom/miui/maml/folme/AnimatedProperty;

    new-instance v0, Lcom/miui/maml/folme/AnimatedProperty$2;

    const-string v1, "y"

    invoke-direct {v0, v1}, Lcom/miui/maml/folme/AnimatedProperty$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/folme/AnimatedProperty;->Y:Lcom/miui/maml/folme/AnimatedProperty;

    new-instance v0, Lcom/miui/maml/folme/AnimatedProperty$3;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Lcom/miui/maml/folme/AnimatedProperty$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/folme/AnimatedProperty;->SCALE_X:Lcom/miui/maml/folme/AnimatedProperty;

    new-instance v0, Lcom/miui/maml/folme/AnimatedProperty$4;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Lcom/miui/maml/folme/AnimatedProperty$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/folme/AnimatedProperty;->SCALE_Y:Lcom/miui/maml/folme/AnimatedProperty;

    new-instance v0, Lcom/miui/maml/folme/AnimatedProperty$5;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Lcom/miui/maml/folme/AnimatedProperty$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/folme/AnimatedProperty;->ROTATION:Lcom/miui/maml/folme/AnimatedProperty;

    new-instance v0, Lcom/miui/maml/folme/AnimatedProperty$6;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Lcom/miui/maml/folme/AnimatedProperty$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/folme/AnimatedProperty;->ROTATION_X:Lcom/miui/maml/folme/AnimatedProperty;

    new-instance v0, Lcom/miui/maml/folme/AnimatedProperty$7;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Lcom/miui/maml/folme/AnimatedProperty$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/folme/AnimatedProperty;->ROTATION_Y:Lcom/miui/maml/folme/AnimatedProperty;

    new-instance v0, Lcom/miui/maml/folme/AnimatedProperty$8;

    const-string v1, "rotationZ"

    invoke-direct {v0, v1}, Lcom/miui/maml/folme/AnimatedProperty$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/folme/AnimatedProperty;->ROTATION_Z:Lcom/miui/maml/folme/AnimatedProperty;

    new-instance v0, Lcom/miui/maml/folme/AnimatedProperty$9;

    const-string v1, "h"

    invoke-direct {v0, v1}, Lcom/miui/maml/folme/AnimatedProperty$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/folme/AnimatedProperty;->HEIGHT:Lcom/miui/maml/folme/AnimatedProperty;

    new-instance v0, Lcom/miui/maml/folme/AnimatedProperty$10;

    const-string v1, "w"

    invoke-direct {v0, v1}, Lcom/miui/maml/folme/AnimatedProperty$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/folme/AnimatedProperty;->WIDTH:Lcom/miui/maml/folme/AnimatedProperty;

    new-instance v0, Lcom/miui/maml/folme/AnimatedProperty$11;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lcom/miui/maml/folme/AnimatedProperty$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/folme/AnimatedProperty;->ALPHA:Lcom/miui/maml/folme/AnimatedProperty;

    new-instance v0, Lcom/miui/maml/folme/AnimatedProperty$12;

    const-string v1, "tintColor"

    invoke-direct {v0, v1}, Lcom/miui/maml/folme/AnimatedProperty$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/folme/AnimatedProperty;->TINT_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    new-instance v0, Lcom/miui/maml/folme/AnimatedProperty$13;

    const-string v1, "pivotX"

    invoke-direct {v0, v1}, Lcom/miui/maml/folme/AnimatedProperty$13;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/folme/AnimatedProperty;->PIVOT_X:Lcom/miui/maml/folme/AnimatedProperty;

    new-instance v0, Lcom/miui/maml/folme/AnimatedProperty$14;

    const-string v1, "pivotY"

    invoke-direct {v0, v1}, Lcom/miui/maml/folme/AnimatedProperty$14;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/folme/AnimatedProperty;->PIVOT_Y:Lcom/miui/maml/folme/AnimatedProperty;

    new-instance v0, Lcom/miui/maml/folme/AnimatedProperty$15;

    const-string v1, "pivotZ"

    invoke-direct {v0, v1}, Lcom/miui/maml/folme/AnimatedProperty$15;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/folme/AnimatedProperty;->PIVOT_Z:Lcom/miui/maml/folme/AnimatedProperty;

    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "x"

    sget-object v2, Lcom/miui/maml/folme/AnimatedProperty;->X:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "y"

    sget-object v2, Lcom/miui/maml/folme/AnimatedProperty;->Y:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "scaleX"

    sget-object v2, Lcom/miui/maml/folme/AnimatedProperty;->SCALE_X:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "scaleY"

    sget-object v2, Lcom/miui/maml/folme/AnimatedProperty;->SCALE_Y:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "alpha"

    sget-object v2, Lcom/miui/maml/folme/AnimatedProperty;->ALPHA:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "h"

    sget-object v2, Lcom/miui/maml/folme/AnimatedProperty;->HEIGHT:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "w"

    sget-object v2, Lcom/miui/maml/folme/AnimatedProperty;->WIDTH:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "rotation"

    sget-object v2, Lcom/miui/maml/folme/AnimatedProperty;->ROTATION:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "rotationX"

    sget-object v2, Lcom/miui/maml/folme/AnimatedProperty;->ROTATION_X:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "rotationY"

    sget-object v2, Lcom/miui/maml/folme/AnimatedProperty;->ROTATION_Y:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "rotationZ"

    sget-object v2, Lcom/miui/maml/folme/AnimatedProperty;->ROTATION_Z:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "tintColor"

    sget-object v2, Lcom/miui/maml/folme/AnimatedProperty;->TINT_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "pivotX"

    sget-object v2, Lcom/miui/maml/folme/AnimatedProperty;->PIVOT_X:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "pivotY"

    sget-object v2, Lcom/miui/maml/folme/AnimatedProperty;->PIVOT_Y:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "pivotZ"

    sget-object v2, Lcom/miui/maml/folme/AnimatedProperty;->PIVOT_Z:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getPropertyByName(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;
    .locals 1

    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/animation/property/FloatProperty;

    return-object p0
.end method
