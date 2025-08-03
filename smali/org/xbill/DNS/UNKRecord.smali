.class public Lorg/xbill/DNS/UNKRecord;
.super Lorg/xbill/DNS/Record;
.source "UNKRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x3a3299cda79a9f63L


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
    new-instance p0, Lorg/xbill/DNS/UNKRecord;

    invoke-direct {p0}, Lorg/xbill/DNS/UNKRecord;-><init>()V

    return-object p0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 0

    .line 29
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/UNKRecord;->data:[B

    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/xbill/DNS/UNKRecord;->data:[B

    invoke-static {p0}, Lorg/xbill/DNS/Record;->unknownToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/xbill/DNS/UNKRecord;->data:[B

    invoke-virtual {p1, p0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    return-void
.end method
