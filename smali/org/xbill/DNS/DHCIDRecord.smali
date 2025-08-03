.class public Lorg/xbill/DNS/DHCIDRecord;
.super Lorg/xbill/DNS/Record;
.source "DHCIDRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x7200e772daec634bL


# instance fields
.field private data:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 0

    .line 24
    new-instance p0, Lorg/xbill/DNS/DHCIDRecord;

    invoke-direct {p0}, Lorg/xbill/DNS/DHCIDRecord;-><init>()V

    return-object p0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 0

    .line 39
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/DHCIDRecord;->data:[B

    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/xbill/DNS/DHCIDRecord;->data:[B

    invoke-static {p0}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/xbill/DNS/DHCIDRecord;->data:[B

    invoke-virtual {p1, p0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    return-void
.end method
