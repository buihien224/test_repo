.class final Lcom/miui/maml/elements/filament/Header;
.super Ljava/lang/Object;
.source "MeshLoader.kt"


# instance fields
.field private aabb:Lcom/google/android/filament/Box;

.field private colorOffset:J

.field private colorStride:J

.field private flags:J

.field private indices16Bit:J

.field private indicesSizeInBytes:J

.field private parts:J

.field private posOffset:J

.field private positionStride:J

.field private tangentOffset:J

.field private tangentStride:J

.field private totalIndices:J

.field private totalVertices:J

.field private uv0Offset:J

.field private uv0Stride:J

.field private uv1Offset:J

.field private uv1Stride:J

.field private valid:Z

.field private versionNumber:J

.field private verticesSizeInBytes:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/filament/Box;

    invoke-direct {v0}, Lcom/google/android/filament/Box;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/Header;->aabb:Lcom/google/android/filament/Box;

    return-void
.end method


# virtual methods
.method public final getAabb()Lcom/google/android/filament/Box;
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/elements/filament/Header;->aabb:Lcom/google/android/filament/Box;

    return-object v0
.end method

.method public final getColorOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/maml/elements/filament/Header;->colorOffset:J

    return-wide v0
.end method

.method public final getColorStride()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/maml/elements/filament/Header;->colorStride:J

    return-wide v0
.end method

.method public final getFlags()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/maml/elements/filament/Header;->flags:J

    return-wide v0
.end method

.method public final getIndices16Bit()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/maml/elements/filament/Header;->indices16Bit:J

    return-wide v0
.end method

.method public final getIndicesSizeInBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/maml/elements/filament/Header;->indicesSizeInBytes:J

    return-wide v0
.end method

.method public final getParts()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/maml/elements/filament/Header;->parts:J

    return-wide v0
.end method

.method public final getPosOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/maml/elements/filament/Header;->posOffset:J

    return-wide v0
.end method

.method public final getPositionStride()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/maml/elements/filament/Header;->positionStride:J

    return-wide v0
.end method

.method public final getTangentOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/maml/elements/filament/Header;->tangentOffset:J

    return-wide v0
.end method

.method public final getTangentStride()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/maml/elements/filament/Header;->tangentStride:J

    return-wide v0
.end method

.method public final getTotalIndices()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/maml/elements/filament/Header;->totalIndices:J

    return-wide v0
.end method

.method public final getTotalVertices()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/maml/elements/filament/Header;->totalVertices:J

    return-wide v0
.end method

.method public final getUv0Offset()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/maml/elements/filament/Header;->uv0Offset:J

    return-wide v0
.end method

.method public final getUv0Stride()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/maml/elements/filament/Header;->uv0Stride:J

    return-wide v0
.end method

.method public final getUv1Offset()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/maml/elements/filament/Header;->uv1Offset:J

    return-wide v0
.end method

.method public final getUv1Stride()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/maml/elements/filament/Header;->uv1Stride:J

    return-wide v0
.end method

.method public final getValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/maml/elements/filament/Header;->valid:Z

    return v0
.end method

.method public final getVersionNumber()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/maml/elements/filament/Header;->versionNumber:J

    return-wide v0
.end method

.method public final getVerticesSizeInBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/maml/elements/filament/Header;->verticesSizeInBytes:J

    return-wide v0
.end method

.method public final setAabb(Lcom/google/android/filament/Box;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/maml/elements/filament/Header;->aabb:Lcom/google/android/filament/Box;

    return-void
.end method

.method public final setColorOffset(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/maml/elements/filament/Header;->colorOffset:J

    return-void
.end method

.method public final setColorStride(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/maml/elements/filament/Header;->colorStride:J

    return-void
.end method

.method public final setFlags(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/maml/elements/filament/Header;->flags:J

    return-void
.end method

.method public final setIndices16Bit(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/maml/elements/filament/Header;->indices16Bit:J

    return-void
.end method

.method public final setIndicesSizeInBytes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/maml/elements/filament/Header;->indicesSizeInBytes:J

    return-void
.end method

.method public final setParts(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/maml/elements/filament/Header;->parts:J

    return-void
.end method

.method public final setPosOffset(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/maml/elements/filament/Header;->posOffset:J

    return-void
.end method

.method public final setPositionStride(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/maml/elements/filament/Header;->positionStride:J

    return-void
.end method

.method public final setTangentOffset(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/maml/elements/filament/Header;->tangentOffset:J

    return-void
.end method

.method public final setTangentStride(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/maml/elements/filament/Header;->tangentStride:J

    return-void
.end method

.method public final setTotalIndices(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/maml/elements/filament/Header;->totalIndices:J

    return-void
.end method

.method public final setTotalVertices(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/maml/elements/filament/Header;->totalVertices:J

    return-void
.end method

.method public final setUv0Offset(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/maml/elements/filament/Header;->uv0Offset:J

    return-void
.end method

.method public final setUv0Stride(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/maml/elements/filament/Header;->uv0Stride:J

    return-void
.end method

.method public final setUv1Offset(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/maml/elements/filament/Header;->uv1Offset:J

    return-void
.end method

.method public final setUv1Stride(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/maml/elements/filament/Header;->uv1Stride:J

    return-void
.end method

.method public final setValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/maml/elements/filament/Header;->valid:Z

    return-void
.end method

.method public final setVersionNumber(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/maml/elements/filament/Header;->versionNumber:J

    return-void
.end method

.method public final setVerticesSizeInBytes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/maml/elements/filament/Header;->verticesSizeInBytes:J

    return-void
.end method
