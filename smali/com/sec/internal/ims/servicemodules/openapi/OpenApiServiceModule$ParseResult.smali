.class Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$ParseResult;
.super Ljava/lang/Object;
.source "OpenApiServiceModule.java"


# instance fields
.field event:Ljava/lang/String;

.field msgType:I

.field result:Z


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;Ljava/lang/String;Z)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$ParseResult;->msgType:I

    .line 83
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$ParseResult;->event:Ljava/lang/String;

    .line 84
    iput-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$ParseResult;->result:Z

    return-void
.end method
