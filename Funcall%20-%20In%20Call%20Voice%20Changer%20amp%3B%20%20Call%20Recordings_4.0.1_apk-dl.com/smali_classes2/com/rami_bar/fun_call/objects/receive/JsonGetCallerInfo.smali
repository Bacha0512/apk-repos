.class public Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;
.super Ljava/lang/Object;
.source "JsonGetCallerInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$Offer;,
        Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$registerCallerId;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x8L


# instance fields
.field public allow_one_audience:Z

.field public allow_push_noti:Z

.field public credit:I

.field public error_msg:Ljava/lang/String;

.field public force_app_update:Ljava/lang/String;

.field public incall_sounds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rami_bar/fun_call/objects/InCallSounds;",
            ">;"
        }
    .end annotation
.end field

.field public message_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/Suggestion;",
            ">;"
        }
    .end annotation
.end field

.field public offers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$Offer;",
            ">;"
        }
    .end annotation
.end field

.field public purchase_options:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public recording_credit:I

.field public register_callerid:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$registerCallerId;

.field public resend_token:Ljava/lang/Boolean;

.field public set_userid:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public total_answer_calls:I

.field public txt_price:Ljava/lang/String;

.field public voip_exten:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/VoipExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
