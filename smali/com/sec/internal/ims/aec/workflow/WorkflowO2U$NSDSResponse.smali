.class Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;
.super Ljava/lang/Object;
.source "WorkflowO2U.java"


# instance fields
.field public entitlementStatus_VoLTE:Z

.field public entitlementStatus_VoWiFi:Z

.field public pollInterval:I

.field public responseCode:I

.field public responseCode_VoLTE:I

.field public responseCode_VoWiFi:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 171
    iput v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->responseCode:I

    .line 172
    iput v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->responseCode_VoLTE:I

    .line 173
    iput v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->responseCode_VoWiFi:I

    const/16 v0, 0x18

    .line 174
    iput v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->pollInterval:I

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->entitlementStatus_VoLTE:Z

    .line 176
    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->entitlementStatus_VoWiFi:Z

    return-void
.end method


# virtual methods
.method public printLog()Ljava/lang/String;
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "responseCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->responseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pollInterval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->pollInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", responseCode_VoLTE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->responseCode_VoLTE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", entitlementStatus_VoLTE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->entitlementStatus_VoLTE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", responseCode_VoWiFi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->responseCode_VoWiFi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", entitlementStatus_VoWiFi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->entitlementStatus_VoWiFi:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
