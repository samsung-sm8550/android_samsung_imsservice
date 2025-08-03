.class public final synthetic Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;

.field public final synthetic f$1:Lcom/voltecrypt/service/SxRequestQMKeyEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;Lcom/voltecrypt/service/SxRequestQMKeyEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda6;->f$0:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda6;->f$1:Lcom/voltecrypt/service/SxRequestQMKeyEntity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda6;->f$0:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda6;->f$1:Lcom/voltecrypt/service/SxRequestQMKeyEntity;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->$r8$lambda$k9I_NuShoJrtiDJcf30W9uUi-Jc(Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;Lcom/voltecrypt/service/SxRequestQMKeyEntity;)V

    return-void
.end method
