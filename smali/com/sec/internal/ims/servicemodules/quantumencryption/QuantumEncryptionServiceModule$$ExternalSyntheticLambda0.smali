.class public final synthetic Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;

.field public final synthetic f$1:Lcom/voltecrypt/service/SxRequestAuthenticationEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;Lcom/voltecrypt/service/SxRequestAuthenticationEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda0;->f$1:Lcom/voltecrypt/service/SxRequestAuthenticationEntity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda0;->f$1:Lcom/voltecrypt/service/SxRequestAuthenticationEntity;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->$r8$lambda$f5Tafssm3Z6pKC8TS7nK0-yMj7Q(Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;Lcom/voltecrypt/service/SxRequestAuthenticationEntity;)V

    return-void
.end method
