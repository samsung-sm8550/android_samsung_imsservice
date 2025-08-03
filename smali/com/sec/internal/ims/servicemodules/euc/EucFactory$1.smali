.class Lcom/sec/internal/ims/servicemodules/euc/EucFactory$1;
.super Ljava/lang/Object;
.source "EucFactory.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/euc/EucFactory;

.field final synthetic val$eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

.field final synthetic val$isExternal:Z

.field final synthetic val$isPinRequested:Z

.field final synthetic val$state:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

.field final synthetic val$timeout:Ljava/lang/Long;

.field final synthetic val$timestamp:J

.field final synthetic val$userPin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/EucFactory;Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;ZZLcom/sec/internal/ims/servicemodules/euc/data/EucState;JLjava/lang/Long;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/EucFactory;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$1;->val$eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    iput-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$1;->val$isPinRequested:Z

    iput-boolean p4, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$1;->val$isExternal:Z

    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$1;->val$state:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    iput-wide p6, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$1;->val$timestamp:J

    iput-object p8, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$1;->val$timeout:Ljava/lang/Long;

    iput-object p9, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$1;->val$userPin:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExternal()Z
    .locals 0

    .line 172
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$1;->val$isExternal:Z

    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$1;->val$eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->getEucId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$1;->val$eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    return-object p0
.end method

.method public getOwnIdentity()Ljava/lang/String;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$1;->val$eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->getOwnIdentity()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPin()Z
    .locals 0

    .line 167
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$1;->val$isPinRequested:Z

    return p0
.end method

.method public getRemoteUri()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$1;->val$eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    return-object p0
.end method

.method public getState()Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$1;->val$state:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    return-object p0
.end method

.method public getTimeOut()Ljava/lang/Long;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$1;->val$timeout:Ljava/lang/Long;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    .line 197
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$1;->val$timestamp:J

    return-wide v0
.end method

.method public getType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$1;->val$eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->getEucType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object p0

    return-object p0
.end method

.method public getUserPin()Ljava/lang/String;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$1;->val$userPin:Ljava/lang/String;

    return-object p0
.end method
