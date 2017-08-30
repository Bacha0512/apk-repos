.class public Lcom/rami_bar/fun_call/utiles/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTION_DAILY_BONUS:Ljava/lang/String; = "daily_bonus"

.field public static final ACTION_INFO:Ljava/lang/String; = "info"

.field public static final ACTION_OFFERWALL:Ljava/lang/String; = "offerwall"

.field public static final ACTION_PAYME_WEB:Ljava/lang/String; = "paypal_web"

.field public static final ACTION_PUBNATIVE:Ljava/lang/String; = "pubnative"

.field public static final ACTION_PURCHASE:Ljava/lang/String; = "purchase"

.field public static final ACTION_RECORDINGS:Ljava/lang/String; = "recordings"

.field public static final ACTION_SHARE_SMS:Ljava/lang/String; = "share_sms"

.field public static API_VOIP:Ljava/lang/String; = null

.field public static APPLICATION_FOLDER:Ljava/lang/String; = null

.field public static final INTENT_BILLING:Ljava/lang/String; = "billing_type"

.field public static final INTENT_BROADCAST_GET_CALLER_INFO:Ljava/lang/String; = "get_caller_info"

.field public static final INTENT_CALL_NUMBER:Ljava/lang/String; = "call_number"

.field public static INTENT_POPUP:Ljava/lang/String; = null

.field public static INTENT_POPUP_ACTION:Ljava/lang/String; = null

.field public static final INTENT_PUSH:Ljava/lang/String; = "push"

.field public static final INTENT_SUGGESTIONS:Ljava/lang/String; = "suggestion"

.field public static final INTENT_URL:Ljava/lang/String; = "url"

.field public static final INTENT_VOIP_EXTENSION:Ljava/lang/String; = "voip_extension"

.field public static final NUM_TYPE_DEFAULT_NUMBER:Ljava/lang/String; = "default"

.field public static final NUM_TYPE_MY_NUMBER:Ljava/lang/String; = "my_number"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string v0, "http://api.funcall.co/"

    sput-object v0, Lcom/rami_bar/fun_call/utiles/Constants;->API_VOIP:Ljava/lang/String;

    .line 6
    const-string v0, "/Funcall/"

    sput-object v0, Lcom/rami_bar/fun_call/utiles/Constants;->APPLICATION_FOLDER:Ljava/lang/String;

    .line 9
    const-string v0, "popup"

    sput-object v0, Lcom/rami_bar/fun_call/utiles/Constants;->INTENT_POPUP:Ljava/lang/String;

    .line 10
    const-string v0, "popup_action"

    sput-object v0, Lcom/rami_bar/fun_call/utiles/Constants;->INTENT_POPUP_ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
