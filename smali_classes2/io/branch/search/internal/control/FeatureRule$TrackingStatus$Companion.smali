.class public final Lio/branch/search/internal/control/FeatureRule$TrackingStatus$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/control/FeatureRule$TrackingStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/branch/search/internal/control/FeatureRule$TrackingStatus$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lio/branch/search/internal/control/FeatureRule$TrackingStatus;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;

    return-object v0
.end method
