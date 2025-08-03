.class Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;
.super Ljava/lang/Object;
.source "ServiceAvailabilityEventListenerUp.java"


# instance fields
.field private date:Ljava/util/Date;

.field private ownIdentity:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;

.field private uri:Lcom/sec/ims/util/ImsUri;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;Ljava/util/Date;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;->this$0:Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;->uri:Lcom/sec/ims/util/ImsUri;

    .line 133
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;->date:Ljava/util/Date;

    .line 134
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;->ownIdentity:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;->date:Ljava/util/Date;

    return-object p0
.end method

.method public getOwnIdentity()Ljava/lang/String;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;->ownIdentity:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;->uri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method
