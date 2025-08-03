.class public Lorg/xbill/DNS/X25Record;
.super Lorg/xbill/DNS/Record;
.source "X25Record.java"


# static fields
.field private static final serialVersionUID:J = 0x3b3979fdac5ae274L


# instance fields
.field private address:[B


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
    new-instance p0, Lorg/xbill/DNS/X25Record;

    invoke-direct {p0}, Lorg/xbill/DNS/X25Record;-><init>()V

    return-object p0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 0

    .line 57
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readCountedString()[B

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/X25Record;->address:[B

    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object p0, p0, Lorg/xbill/DNS/X25Record;->address:[B

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/xbill/DNS/Record;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/xbill/DNS/X25Record;->address:[B

    invoke-virtual {p1, p0}, Lorg/xbill/DNS/DNSOutput;->writeCountedString([B)V

    return-void
.end method
