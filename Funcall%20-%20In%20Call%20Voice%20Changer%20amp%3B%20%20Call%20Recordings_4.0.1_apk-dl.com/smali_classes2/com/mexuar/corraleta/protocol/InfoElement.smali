.class public Lcom/mexuar/corraleta/protocol/InfoElement;
.super Ljava/lang/Object;
.source "InfoElement.java"


# static fields
.field static final AAA:I = 0x12

.field static final ADSICPE:I = 0xc

.field static final AESPROVISIONING:I = 0x1e

.field static final AUTHMETHODS:I = 0xe

.field static final AUTOANS:I = 0x19

.field static final CALLEDCTX:I = 0x5

.field static final CALLEDNO:I = 0x1

.field static final CALLINGANI:I = 0x3

.field static final CALLINGNAME:I = 0x4

.field static final CALLINGNO:I = 0x2

.field static final CALLINGPRES:I = 0x26

.field static final CALLINGTNS:I = 0x28

.field static final CALLINGTON:I = 0x27

.field static final CALLNO:I = 0x15

.field static final CAPABILITY:I = 0x8

.field static final CAUSE:I = 0x16

.field static final CAUSECODE:I = 0x2a

.field static final CHALLENGE:I = 0xf

.field static final CODEC_PREFS:I = 0x2d

.field static final DATETIME:I = 0x1f

.field static final DEVICETYPE:I = 0x20

.field static final DNID:I = 0xd

.field static final DPE:I = 0x14

.field static final ENCKEY:I = 0x2c

.field static final ENCRYPTION:I = 0x2b

.field static final FIRMWAREVER:I = 0x22

.field static final FORMAT:I = 0x9

.field static final FWBLOCKDATA:I = 0x24

.field static final FWBLOCKDESC:I = 0x23

.field static final IAXUNKNOWN:I = 0x17

.field static final IAXVARS:I = 0x34

.field static final LANGUAGE:I = 0xa

.field static final MD5RESULT:I = 0x10

.field static final MOH:I = 0x1a

.field static final MSGCOUNT:I = 0x18

.field static final PASSWORD:I = 0x7

.field static final PROVISIONING:I = 0x1d

.field static final PROVVER:I = 0x25

.field static final RDNIS:I = 0x1c

.field static final REFRESH:I = 0x13

.field static final RR_DELAY:I = 0x31

.field static final RR_DROPPED:I = 0x32

.field static final RR_JITTER:I = 0x2e

.field static final RR_LOSS:I = 0x2f

.field static final RR_OOO:I = 0x33

.field static final RR_PKTS:I = 0x30

.field static final RSARESULT:I = 0x11

.field static final SAMPLINGRATE:I = 0x29

.field static final SERVICEIDENT:I = 0x21

.field static final TRANSINDIC:I = 0x1b

.field static final USERNAME:I = 0x6

.field static final VERSION:I = 0xb


# instance fields
.field _buff:Lcom/mexuar/corraleta/util/ByteBuffer;

.field private _iaxvars:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field _nelems:I

.field aaa:[B

.field adsiCpe:Ljava/lang/Integer;

.field aesprovisioning:[B

.field authmethods:Ljava/lang/Integer;

.field autoAns:Ljava/lang/Boolean;

.field callNo:Ljava/lang/Integer;

.field calledCtx:Ljava/lang/String;

.field calledNo:Ljava/lang/String;

.field callingANI:Ljava/lang/String;

.field callingName:Ljava/lang/String;

.field callingNo:Ljava/lang/String;

.field callingpres:Ljava/lang/Integer;

.field callingtns:Ljava/lang/Integer;

.field callington:Ljava/lang/Integer;

.field capability:Ljava/lang/Integer;

.field cause:Ljava/lang/String;

.field causecode:Ljava/lang/Integer;

.field challenge:Ljava/lang/String;

.field codec_prefs:[B

.field datetime:Ljava/lang/Integer;

.field devicetype:Ljava/lang/String;

.field dnid:Ljava/lang/String;

.field dpe:Ljava/lang/Integer;

.field enckey:[B

.field encryption:Ljava/lang/Integer;

.field firmwarever:Ljava/lang/Integer;

.field format:Ljava/lang/Integer;

.field fwblockdata:[B

.field fwblockdesc:Ljava/lang/Integer;

.field iaxunknown:Ljava/lang/Integer;

.field language:Ljava/lang/String;

.field md5Result:Ljava/lang/String;

.field moh:Ljava/lang/String;

.field msgCount:Ljava/lang/Integer;

.field password:Ljava/lang/String;

.field provisioning:[B

.field provver:Ljava/lang/Integer;

.field rdnis:Ljava/lang/String;

.field refresh:Ljava/lang/Integer;

.field rr_delay:Ljava/lang/Integer;

.field rr_dropped:Ljava/lang/Integer;

.field rr_jitter:Ljava/lang/Integer;

.field rr_loss:Ljava/lang/Integer;

.field rr_ooo:Ljava/lang/Integer;

.field rr_pkts:Ljava/lang/Integer;

.field rsaResult:Ljava/lang/String;

.field samplingrate:Ljava/lang/Integer;

.field serviceident:Ljava/lang/String;

.field transIndic:Ljava/lang/Integer;

.field username:Ljava/lang/String;

.field version:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_nelems:I

    .line 263
    return-void
.end method

.method constructor <init>(Lcom/mexuar/corraleta/util/ByteBuffer;)V
    .locals 1
    .param p1, "bin"    # Lcom/mexuar/corraleta/util/ByteBuffer;

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_nelems:I

    .line 256
    iput-object p1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    .line 257
    return-void
.end method

.method private nextBit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;
        }
    .end annotation

    .prologue
    .line 698
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/util/ByteBuffer;->get()B

    move-result v0

    .line 699
    .local v0, "k":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IE type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->verb(Ljava/lang/String;)V

    .line 700
    packed-switch v0, :pswitch_data_0

    .line 859
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown InfoElement Type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->warn(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readRaw()[B

    .line 861
    new-instance v1, Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown InfoElement Type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 702
    :pswitch_0
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->calledNo:Ljava/lang/String;

    .line 863
    :goto_0
    :pswitch_1
    return-void

    .line 705
    :pswitch_2
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->callingNo:Ljava/lang/String;

    goto :goto_0

    .line 708
    :pswitch_3
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->callingANI:Ljava/lang/String;

    goto :goto_0

    .line 711
    :pswitch_4
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->callingName:Ljava/lang/String;

    goto :goto_0

    .line 714
    :pswitch_5
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->calledCtx:Ljava/lang/String;

    goto :goto_0

    .line 717
    :pswitch_6
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->username:Ljava/lang/String;

    goto :goto_0

    .line 720
    :pswitch_7
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->password:Ljava/lang/String;

    goto :goto_0

    .line 723
    :pswitch_8
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read32()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->capability:Ljava/lang/Integer;

    goto :goto_0

    .line 726
    :pswitch_9
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read32()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->format:Ljava/lang/Integer;

    goto :goto_0

    .line 729
    :pswitch_a
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->language:Ljava/lang/String;

    goto :goto_0

    .line 732
    :pswitch_b
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read16()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->version:Ljava/lang/Integer;

    goto :goto_0

    .line 735
    :pswitch_c
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read16()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->adsiCpe:Ljava/lang/Integer;

    goto :goto_0

    .line 740
    :pswitch_d
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read16()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->authmethods:Ljava/lang/Integer;

    goto :goto_0

    .line 743
    :pswitch_e
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->challenge:Ljava/lang/String;

    goto :goto_0

    .line 746
    :pswitch_f
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->md5Result:Ljava/lang/String;

    goto :goto_0

    .line 749
    :pswitch_10
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->rsaResult:Ljava/lang/String;

    goto/16 :goto_0

    .line 752
    :pswitch_11
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readRaw()[B

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->aaa:[B

    goto/16 :goto_0

    .line 755
    :pswitch_12
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read16()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->refresh:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 758
    :pswitch_13
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read16()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->dpe:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 761
    :pswitch_14
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read16()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->callNo:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 764
    :pswitch_15
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->cause:Ljava/lang/String;

    goto/16 :goto_0

    .line 767
    :pswitch_16
    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v2}, Lcom/mexuar/corraleta/util/ByteBuffer;->get()B

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->iaxunknown:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 770
    :pswitch_17
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read16()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->msgCount:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 773
    :pswitch_18
    new-instance v1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read0()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->autoAns:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 776
    :pswitch_19
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->moh:Ljava/lang/String;

    goto/16 :goto_0

    .line 779
    :pswitch_1a
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read32()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->transIndic:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 782
    :pswitch_1b
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->rdnis:Ljava/lang/String;

    goto/16 :goto_0

    .line 785
    :pswitch_1c
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readRaw()[B

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->provisioning:[B

    goto/16 :goto_0

    .line 788
    :pswitch_1d
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readRaw()[B

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->aesprovisioning:[B

    goto/16 :goto_0

    .line 791
    :pswitch_1e
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read32()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->datetime:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 794
    :pswitch_1f
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->devicetype:Ljava/lang/String;

    goto/16 :goto_0

    .line 798
    :pswitch_20
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->serviceident:Ljava/lang/String;

    goto/16 :goto_0

    .line 801
    :pswitch_21
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read16()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->firmwarever:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 804
    :pswitch_22
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read32()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->fwblockdesc:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 807
    :pswitch_23
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readRaw()[B

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->fwblockdata:[B

    goto/16 :goto_0

    .line 810
    :pswitch_24
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read32()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->provver:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 813
    :pswitch_25
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read8()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->callingpres:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 816
    :pswitch_26
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read8()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->callington:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 819
    :pswitch_27
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read16()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->callingtns:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 822
    :pswitch_28
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read16()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->samplingrate:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 825
    :pswitch_29
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read8()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->causecode:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 828
    :pswitch_2a
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read16()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->encryption:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 831
    :pswitch_2b
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readRaw()[B

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->enckey:[B

    goto/16 :goto_0

    .line 834
    :pswitch_2c
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readRaw()[B

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->codec_prefs:[B

    goto/16 :goto_0

    .line 837
    :pswitch_2d
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read32()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->rr_jitter:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 840
    :pswitch_2e
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read32()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->rr_loss:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 843
    :pswitch_2f
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read32()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->rr_pkts:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 846
    :pswitch_30
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read16()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->rr_delay:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 849
    :pswitch_31
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read32()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->rr_dropped:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 852
    :pswitch_32
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->read32()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->rr_ooo:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 855
    :pswitch_33
    invoke-direct {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readVar()V

    goto/16 :goto_0

    .line 700
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_1
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
    .end packed-switch
.end method

.method private readVar()V
    .locals 5

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->readString()Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, "s":Ljava/lang/String;
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 447
    .local v0, "i":I
    if-lez v0, :cond_0

    .line 448
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 450
    .local v3, "val":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/mexuar/corraleta/protocol/InfoElement;->putIaxVar(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method getIaxVarVal(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 286
    const/4 v1, 0x0

    .line 287
    .local v1, "ret":Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_iaxvars:Ljava/util/Hashtable;

    if-eqz v2, :cond_0

    .line 288
    iget-object v3, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_iaxvars:Ljava/util/Hashtable;

    monitor-enter v3

    .line 289
    :try_start_0
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_iaxvars:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 288
    monitor-exit v3

    .line 292
    :cond_0
    return-object v1

    .line 288
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getbuff()[B
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/mexuar/corraleta/util/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public listIaxVars()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 268
    iget-object v6, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_iaxvars:Ljava/util/Hashtable;

    if-nez v6, :cond_0

    .line 269
    const/4 v6, 0x0

    new-array v4, v6, [Ljava/lang/String;

    .line 282
    .local v4, "ret":[Ljava/lang/String;
    :goto_0
    return-object v4

    .line 271
    .end local v4    # "ret":[Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_iaxvars:Ljava/util/Hashtable;

    monitor-enter v7

    .line 272
    :try_start_0
    iget-object v6, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_iaxvars:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    .line 273
    .restart local v4    # "ret":[Ljava/lang/String;
    iget-object v6, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_iaxvars:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 274
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .line 275
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_1

    .line 271
    monitor-exit v7

    goto :goto_0

    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v4    # "ret":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 276
    .restart local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v2    # "i":I
    .restart local v4    # "ret":[Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 277
    .local v3, "k":Ljava/lang/String;
    iget-object v6, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_iaxvars:Ljava/util/Hashtable;

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 278
    .local v5, "v":Ljava/lang/String;
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1
.end method

.method public numElems()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_nelems:I

    return v0
.end method

.method public parse(Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;)V
    .locals 1
    .param p1, "protocolControlFrame"    # Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;
        }
    .end annotation

    .prologue
    .line 323
    :goto_0
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/mexuar/corraleta/util/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    return-void

    .line 324
    :cond_0
    invoke-direct {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->nextBit()V

    .line 325
    iget v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_nelems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_nelems:I

    goto :goto_0
.end method

.method putIaxVar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 296
    if-eqz p1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_iaxvars:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_iaxvars:Ljava/util/Hashtable;

    .line 299
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_iaxvars:Ljava/util/Hashtable;

    monitor-enter v1

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_iaxvars:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    monitor-exit v1

    .line 304
    :cond_0
    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method read0()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;
        }
    .end annotation

    .prologue
    .line 529
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/util/ByteBuffer;->get()B

    move-result v0

    .line 530
    .local v0, "l":B
    if-eqz v0, :cond_0

    .line 531
    new-instance v1, Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Byte count in IE wrong expected 0 got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 531
    invoke-direct {v1, v2}, Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 534
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method read16()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;
        }
    .end annotation

    .prologue
    .line 545
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v2}, Lcom/mexuar/corraleta/util/ByteBuffer;->get()B

    move-result v0

    .line 546
    .local v0, "l":B
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 547
    new-instance v2, Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Byte count in IE wrong expected 2 got "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 547
    invoke-direct {v2, v3}, Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 550
    :cond_0
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v2}, Lcom/mexuar/corraleta/util/ByteBuffer;->getChar()C

    move-result v1

    .line 551
    .local v1, "ret":I
    return v1
.end method

.method read32()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;
        }
    .end annotation

    .prologue
    .line 573
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v2}, Lcom/mexuar/corraleta/util/ByteBuffer;->get()B

    move-result v0

    .line 574
    .local v0, "l":B
    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 575
    new-instance v2, Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Byte count in IE wrong expected 4 got "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 575
    invoke-direct {v2, v3}, Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 578
    :cond_0
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v2}, Lcom/mexuar/corraleta/util/ByteBuffer;->getInt()I

    move-result v1

    .line 579
    .local v1, "ret":I
    return v1
.end method

.method read8()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;
        }
    .end annotation

    .prologue
    .line 509
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v2}, Lcom/mexuar/corraleta/util/ByteBuffer;->get()B

    move-result v0

    .line 510
    .local v0, "l":B
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 511
    new-instance v2, Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Byte count in IE wrong expected 1 got "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 511
    invoke-direct {v2, v3}, Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 514
    :cond_0
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v2}, Lcom/mexuar/corraleta/util/ByteBuffer;->get()B

    move-result v1

    .line 515
    .local v1, "ret":I
    if-gez v1, :cond_1

    .line 516
    and-int/lit8 v2, v1, 0x7f

    add-int/lit16 v1, v2, 0x80

    .line 518
    :cond_1
    return v1
.end method

.method readRaw()[B
    .locals 3

    .prologue
    .line 461
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v2}, Lcom/mexuar/corraleta/util/ByteBuffer;->get()B

    move-result v1

    .line 462
    .local v1, "len":I
    if-gez v1, :cond_0

    .line 463
    and-int/lit8 v2, v1, 0x7f

    add-int/lit16 v1, v2, 0x80

    .line 465
    :cond_0
    new-array v0, v1, [B

    .line 466
    .local v0, "b":[B
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v2, v0}, Lcom/mexuar/corraleta/util/ByteBuffer;->get([B)V

    .line 467
    return-object v0
.end method

.method readString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 425
    iget-object v4, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v4}, Lcom/mexuar/corraleta/util/ByteBuffer;->get()B

    move-result v2

    .line 426
    .local v2, "len":I
    if-gez v2, :cond_0

    .line 427
    and-int/lit8 v4, v2, 0x7f

    add-int/lit16 v2, v4, 0x80

    .line 429
    :cond_0
    new-array v0, v2, [B

    .line 430
    .local v0, "b":[B
    iget-object v4, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v4, v0}, Lcom/mexuar/corraleta/util/ByteBuffer;->get([B)V

    .line 431
    const/4 v3, 0x0

    .line 433
    .local v3, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    .end local v3    # "ret":Ljava/lang/String;
    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .restart local v3    # "ret":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 435
    .end local v3    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 436
    .local v1, "exc":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public update()V
    .locals 2

    .prologue
    .line 357
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->version:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem16(ILjava/lang/Integer;)V

    .line 358
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->calledNo:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemS(ILjava/lang/String;)V

    .line 359
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->callingNo:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemS(ILjava/lang/String;)V

    .line 360
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->callingANI:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemS(ILjava/lang/String;)V

    .line 361
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->callingName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemS(ILjava/lang/String;)V

    .line 362
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->calledCtx:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemS(ILjava/lang/String;)V

    .line 363
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->username:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemS(ILjava/lang/String;)V

    .line 364
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->password:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemS(ILjava/lang/String;)V

    .line 365
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->capability:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem32(ILjava/lang/Integer;)V

    .line 366
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->format:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem32(ILjava/lang/Integer;)V

    .line 367
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->language:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemS(ILjava/lang/String;)V

    .line 368
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->adsiCpe:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem16(ILjava/lang/Integer;)V

    .line 369
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->dnid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemS(ILjava/lang/String;)V

    .line 370
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->authmethods:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem16(ILjava/lang/Integer;)V

    .line 371
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->challenge:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemS(ILjava/lang/String;)V

    .line 372
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->md5Result:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemS(ILjava/lang/String;)V

    .line 373
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->rsaResult:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemS(ILjava/lang/String;)V

    .line 374
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->aaa:[B

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemRaw(I[B)V

    .line 375
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->refresh:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem16(ILjava/lang/Integer;)V

    .line 376
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->dpe:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem16(ILjava/lang/Integer;)V

    .line 377
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->callNo:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem16(ILjava/lang/Integer;)V

    .line 378
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->cause:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemS(ILjava/lang/String;)V

    .line 379
    const/16 v0, 0x17

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->iaxunknown:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem8(ILjava/lang/Integer;)V

    .line 380
    const/16 v0, 0x18

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->msgCount:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem16(ILjava/lang/Integer;)V

    .line 381
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->autoAns:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    .line 383
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem0(I)V

    .line 385
    :cond_0
    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->moh:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemS(ILjava/lang/String;)V

    .line 386
    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->transIndic:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem32(ILjava/lang/Integer;)V

    .line 387
    const/16 v0, 0x1c

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->rdnis:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemS(ILjava/lang/String;)V

    .line 388
    const/16 v0, 0x1d

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->provisioning:[B

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemRaw(I[B)V

    .line 389
    const/16 v0, 0x1e

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->aesprovisioning:[B

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemRaw(I[B)V

    .line 390
    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->datetime:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem32(ILjava/lang/Integer;)V

    .line 391
    const/16 v0, 0x20

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->devicetype:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemS(ILjava/lang/String;)V

    .line 392
    const/16 v0, 0x21

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->serviceident:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemS(ILjava/lang/String;)V

    .line 393
    const/16 v0, 0x22

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->firmwarever:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem16(ILjava/lang/Integer;)V

    .line 394
    const/16 v0, 0x23

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->fwblockdesc:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem32(ILjava/lang/Integer;)V

    .line 395
    const/16 v0, 0x24

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->fwblockdata:[B

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemRaw(I[B)V

    .line 396
    const/16 v0, 0x25

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->provver:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem32(ILjava/lang/Integer;)V

    .line 397
    const/16 v0, 0x26

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->callingpres:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem8(ILjava/lang/Integer;)V

    .line 398
    const/16 v0, 0x27

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->callington:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem8(ILjava/lang/Integer;)V

    .line 399
    const/16 v0, 0x28

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->callingtns:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem16(ILjava/lang/Integer;)V

    .line 400
    const/16 v0, 0x29

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->samplingrate:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem16(ILjava/lang/Integer;)V

    .line 401
    const/16 v0, 0x2a

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->causecode:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem8(ILjava/lang/Integer;)V

    .line 402
    const/16 v0, 0x2b

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->encryption:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem16(ILjava/lang/Integer;)V

    .line 403
    const/16 v0, 0x2c

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->enckey:[B

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemRaw(I[B)V

    .line 404
    const/16 v0, 0x2d

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->codec_prefs:[B

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemRaw(I[B)V

    .line 405
    const/16 v0, 0x2e

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->rr_jitter:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem32(ILjava/lang/Integer;)V

    .line 406
    const/16 v0, 0x2f

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->rr_loss:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem32(ILjava/lang/Integer;)V

    .line 407
    const/16 v0, 0x30

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->rr_pkts:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem32(ILjava/lang/Integer;)V

    .line 408
    const/16 v0, 0x31

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->rr_delay:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem16(ILjava/lang/Integer;)V

    .line 409
    const/16 v0, 0x32

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->rr_dropped:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem32(ILjava/lang/Integer;)V

    .line 410
    const/16 v0, 0x33

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->rr_ooo:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElem32(ILjava/lang/Integer;)V

    .line 411
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemsVars()V

    .line 415
    return-void
.end method

.method public update(Lcom/mexuar/corraleta/util/ByteBuffer;)V
    .locals 0
    .param p1, "bb"    # Lcom/mexuar/corraleta/util/ByteBuffer;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    .line 347
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->update()V

    .line 348
    return-void
.end method

.method write16(C)V
    .locals 2
    .param p1, "v"    # C

    .prologue
    .line 561
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/util/ByteBuffer;->put(B)V

    .line 562
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/mexuar/corraleta/util/ByteBuffer;->putChar(C)V

    .line 563
    return-void
.end method

.method write32(I)V
    .locals 2
    .param p1, "v"    # I

    .prologue
    .line 589
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/util/ByteBuffer;->put(B)V

    .line 590
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/mexuar/corraleta/util/ByteBuffer;->putInt(I)V

    .line 591
    return-void
.end method

.method writeElem0(I)V
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 685
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/util/ByteBuffer;->put(B)V

    .line 686
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/util/ByteBuffer;->put(B)V

    .line 687
    iget v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_nelems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_nelems:I

    .line 688
    return-void
.end method

.method writeElem16(ILjava/lang/Integer;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "c"    # Ljava/lang/Integer;

    .prologue
    .line 655
    if-eqz p2, :cond_0

    .line 656
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/util/ByteBuffer;->put(B)V

    .line 657
    const v0, 0xffff

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/mexuar/corraleta/protocol/InfoElement;->write16(C)V

    .line 658
    iget v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_nelems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_nelems:I

    .line 660
    :cond_0
    return-void
.end method

.method writeElem32(ILjava/lang/Integer;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "i"    # Ljava/lang/Integer;

    .prologue
    .line 640
    if-eqz p2, :cond_0

    .line 641
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/util/ByteBuffer;->put(B)V

    .line 642
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mexuar/corraleta/protocol/InfoElement;->write32(I)V

    .line 643
    iget v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_nelems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_nelems:I

    .line 645
    :cond_0
    return-void
.end method

.method writeElem8(ILjava/lang/Integer;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "b"    # Ljava/lang/Integer;

    .prologue
    .line 670
    if-eqz p2, :cond_0

    .line 671
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/util/ByteBuffer;->put(B)V

    .line 672
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/util/ByteBuffer;->put(B)V

    .line 673
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/util/ByteBuffer;->put(B)V

    .line 674
    iget v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_nelems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_nelems:I

    .line 676
    :cond_0
    return-void
.end method

.method writeElemRaw(I[B)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "b"    # [B

    .prologue
    .line 625
    if-eqz p2, :cond_0

    .line 626
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/util/ByteBuffer;->put(B)V

    .line 627
    invoke-virtual {p0, p2}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeRaw([B)V

    .line 628
    iget v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_nelems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_nelems:I

    .line 630
    :cond_0
    return-void
.end method

.method writeElemS(ILjava/lang/String;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 601
    if-eqz p2, :cond_0

    .line 602
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/util/ByteBuffer;->put(B)V

    .line 603
    invoke-virtual {p0, p2}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeString(Ljava/lang/String;)V

    .line 604
    iget v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_nelems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_nelems:I

    .line 606
    :cond_0
    return-void
.end method

.method writeElemsVars()V
    .locals 4

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->listIaxVars()[Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, "l":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 615
    return-void

    .line 613
    :cond_0
    const/16 v2, 0x34

    aget-object v3, v1, v0

    invoke-virtual {p0, v2, v3}, Lcom/mexuar/corraleta/protocol/InfoElement;->writeElemS(ILjava/lang/String;)V

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method writeRaw([B)V
    .locals 2
    .param p1, "b"    # [B

    .prologue
    .line 496
    array-length v1, p1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v0, v1

    .line 497
    .local v0, "l":B
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v1, v0}, Lcom/mexuar/corraleta/util/ByteBuffer;->put(B)V

    .line 498
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v1, p1}, Lcom/mexuar/corraleta/util/ByteBuffer;->put([B)V

    .line 499
    return-void
.end method

.method writeString(Ljava/lang/String;)V
    .locals 3
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    .line 477
    const/4 v0, 0x0

    .line 482
    .local v0, "b":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 484
    array-length v2, v0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v1, v2

    .line 485
    .local v1, "l":B
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v2, v1}, Lcom/mexuar/corraleta/util/ByteBuffer;->put(B)V

    .line 486
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/InfoElement;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v2, v0}, Lcom/mexuar/corraleta/util/ByteBuffer;->put([B)V

    .line 487
    return-void
.end method
