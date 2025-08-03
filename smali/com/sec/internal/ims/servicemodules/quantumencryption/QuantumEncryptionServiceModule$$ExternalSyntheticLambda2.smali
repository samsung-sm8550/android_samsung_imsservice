.class public final synthetic Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;

.field public final synthetic f$1:Lcom/voltecrypt/service/SxHangUpEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;Lcom/voltecrypt/service/SxHangUpEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda2;->f$1:Lcom/voltecrypt/service/SxHangUpEntity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda2;->f$1:Lcom/voltecrypt/service/SxHangUpEntity;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->$r8$lambda$mY4neNDaZW7e22P4KQvkZL0dHfc(Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;Lcom/voltecrypt/service/SxHangUpEntity;)V

    return-void
.end method
