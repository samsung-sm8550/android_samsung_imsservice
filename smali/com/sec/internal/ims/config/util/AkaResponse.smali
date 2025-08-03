.class public Lcom/sec/internal/ims/config/util/AkaResponse;
.super Ljava/lang/Object;
.source "AkaResponse.java"


# instance fields
.field private final auts:[B

.field private final ck:[B

.field private final ik:[B

.field private final res:[B


# direct methods
.method public constructor <init>([B[B[B[B)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/config/util/AkaResponse;->ck:[B

    .line 21
    iput-object p2, p0, Lcom/sec/internal/ims/config/util/AkaResponse;->ik:[B

    .line 22
    iput-object p3, p0, Lcom/sec/internal/ims/config/util/AkaResponse;->auts:[B

    .line 23
    iput-object p4, p0, Lcom/sec/internal/ims/config/util/AkaResponse;->res:[B

    return-void
.end method


# virtual methods
.method public getAuts()[B
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/sec/internal/ims/config/util/AkaResponse;->auts:[B

    return-object p0
.end method

.method public getCk()[B
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sec/internal/ims/config/util/AkaResponse;->ck:[B

    return-object p0
.end method

.method public getIk()[B
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sec/internal/ims/config/util/AkaResponse;->ik:[B

    return-object p0
.end method

.method public getRes()[B
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sec/internal/ims/config/util/AkaResponse;->res:[B

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AkaResponse [ck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/config/util/AkaResponse;->ck:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ik="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/config/util/AkaResponse;->ik:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", auts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/config/util/AkaResponse;->auts:[B

    .line 61
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", res="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/config/util/AkaResponse;->res:[B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
