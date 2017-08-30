.class public Lcom/rami_bar/fun_call/activities/ActivityMain;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ActivityMain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rami_bar/fun_call/activities/ActivityMain$AdvertiserUrlInterface;,
        Lcom/rami_bar/fun_call/activities/ActivityMain$GetAdvertisingIdTask;,
        Lcom/rami_bar/fun_call/activities/ActivityMain$DoInitOperationsTask;,
        Lcom/rami_bar/fun_call/activities/ActivityMain$PushNotificationRegistrationInterface;,
        Lcom/rami_bar/fun_call/activities/ActivityMain$CallerInfoInterface;,
        Lcom/rami_bar/fun_call/activities/ActivityMain$CallRequestInterface;,
        Lcom/rami_bar/fun_call/activities/ActivityMain$Receiver;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0x12c

.field private static final FUNCALL_FILE:Ljava/lang/String; = "funcall.txt"

.field private static final INTENT_APPROVE_CALL_LESS_TIME:I = 0x69

.field public static final INTENT_CALLED:I = 0x65

.field private static final INTENT_EXIT_APP:I = 0x6a

.field private static final INTENT_LIKED:I = 0x68

.field private static final INTENT_LIKE_QUESTION:I = 0x67

.field private static final INTENT_NO_NETWORK:I = 0x66

.field public static final INTENT_PICK_CONTACT:I = 0x64

.field private static final MY_PERMISSIONS_REQUEST:I = 0x1

.field public static final ONE_AUDIENCE_KEY:Ljava/lang/String; = "FB9185FC-37B2-4265-8826-177DB0801F68"

.field private static final PLAY_SERVICES_RESOLUTION_REQUEST:I = 0x2328

.field private static final PROPERTY_APP_VERSION:Ljava/lang/String; = "appVersion"

.field public static final PROPERTY_REG_ID:Ljava/lang/String; = "registration_id"

.field public static callerIdType:Ljava/lang/String;

.field public static country_code:Ljava/lang/String;

.field public static json_get_call_result:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;

.field public static json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

.field public static notificationAllow:Ljava/lang/String;

.field public static starting_pitch:Ljava/lang/String;


# instance fields
.field SENDER_ID:Ljava/lang/String;

.field private api_counter:I

.field private bt_call:Landroid/support/design/widget/FloatingActionButton;

.field private bt_keyboard:Landroid/support/design/widget/FloatingActionButton;

.field private bt_recordings:Landroid/widget/Button;

.field private bt_test_call:Landroid/widget/Button;

.field private country_list_adapter:Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;

.field private et_call_num:Landroid/widget/EditText;

.field private file:Ljava/io/File;

.field gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

.field private iv_country:Landroid/widget/ImageView;

.field private ll_main_call_holder:Landroid/widget/LinearLayout;

.field private mAdapterPagerSuggestions:Lcom/rami_bar/fun_call/adapters/AdapterPagerSuggestions;

.field private mAdvertisingId:Ljava/lang/String;

.field private mCountryCodesList:[Ljava/lang/String;

.field private mDisplayNumber:Ljava/lang/String;

.field private mDone:Z

.field private mKeyboardShown:Z

.field private operatorNumber:Ljava/lang/String;

.field private pageIndicatorView:Lcom/rd/PageIndicatorView;

.field private rb_high:Landroid/widget/ImageButton;

.field private rb_highest:Landroid/widget/ImageButton;

.field private rb_low:Landroid/widget/ImageButton;

.field private rb_lowest:Landroid/widget/ImageButton;

.field private rb_normal:Landroid/widget/ImageButton;

.field private regid:Ljava/lang/String;

.field private sdkInitialized:Z

.field private sound_high:Landroid/media/MediaPlayer;

.field private sound_highest:Landroid/media/MediaPlayer;

.field private sound_low:Landroid/media/MediaPlayer;

.field private sound_lowest:Landroid/media/MediaPlayer;

.field private sp_country:Landroid/widget/Spinner;

.field private sw_record:Landroid/support/v7/widget/SwitchCompat;

.field private swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private tv_cost:Landroid/widget/TextView;

.field private tv_high:Landroid/widget/TextView;

.field private tv_highest:Landroid/widget/TextView;

.field private tv_low:Landroid/widget/TextView;

.field private tv_lowest:Landroid/widget/TextView;

.field private tv_prefix:Landroid/widget/TextView;

.field private tv_records_left:Landroid/widget/TextView;

.field private tv_regular:Landroid/widget/TextView;

.field private v_background_trans:Landroid/view/View;

.field private vp_suggestions_holder:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const-string v0, "regular"

    sput-object v0, Lcom/rami_bar/fun_call/activities/ActivityMain;->starting_pitch:Ljava/lang/String;

    .line 118
    const-string v0, ""

    sput-object v0, Lcom/rami_bar/fun_call/activities/ActivityMain;->notificationAllow:Ljava/lang/String;

    .line 119
    const-string v0, ""

    sput-object v0, Lcom/rami_bar/fun_call/activities/ActivityMain;->callerIdType:Ljava/lang/String;

    .line 123
    const-string v0, ""

    sput-object v0, Lcom/rami_bar/fun_call/activities/ActivityMain;->country_code:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 128
    const-string v0, "471609446720"

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->SENDER_ID:Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->api_counter:I

    return-void
.end method

.method static synthetic access$1000(Lcom/rami_bar/fun_call/activities/ActivityMain;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->sendRegistrationIdToBackend()V

    return-void
.end method

.method static synthetic access$1100(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/support/design/widget/FloatingActionButton;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->bt_call:Landroid/support/design/widget/FloatingActionButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/support/design/widget/FloatingActionButton;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->bt_keyboard:Landroid/support/design/widget/FloatingActionButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/rami_bar/fun_call/activities/ActivityMain;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->openPopupNoInternet()V

    return-void
.end method

.method static synthetic access$1400(Lcom/rami_bar/fun_call/activities/ActivityMain;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->openPopupCallLessTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/rami_bar/fun_call/activities/ActivityMain;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->operatorNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/rami_bar/fun_call/activities/ActivityMain;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->mDisplayNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/rami_bar/fun_call/activities/ActivityMain;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->makeCall(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/rami_bar/fun_call/activities/ActivityMain;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->file:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/rami_bar/fun_call/activities/ActivityMain;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getCallerInfo()V

    return-void
.end method

.method static synthetic access$2000(Lcom/rami_bar/fun_call/activities/ActivityMain;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->handleGcmRegistration()V

    return-void
.end method

.method static synthetic access$2100(Lcom/rami_bar/fun_call/activities/ActivityMain;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->updateSuggestionsPager(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_cost:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/rami_bar/fun_call/activities/ActivityMain;)Z
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sdkInitialized:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/rami_bar/fun_call/activities/ActivityMain;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sdkInitialized:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/rami_bar/fun_call/activities/ActivityMain;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->setButtonsState(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/rami_bar/fun_call/activities/ActivityMain;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->storeRegistrationId(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/rami_bar/fun_call/activities/ActivityMain;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->initMediaVoices()V

    return-void
.end method

.method static synthetic access$2800(Lcom/rami_bar/fun_call/activities/ActivityMain;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->initSDKs()V

    return-void
.end method

.method static synthetic access$2902(Lcom/rami_bar/fun_call/activities/ActivityMain;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->mAdvertisingId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/rami_bar/fun_call/activities/ActivityMain;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getCountryFromPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/rami_bar/fun_call/activities/ActivityMain;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->setCountryToCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/rami_bar/fun_call/activities/ActivityMain;)Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->country_list_adapter:Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_prefix:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->iv_country:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/rami_bar/fun_call/activities/ActivityMain;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->regid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/rami_bar/fun_call/activities/ActivityMain;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->regid:Ljava/lang/String;

    return-object p1
.end method

.method private checkPermission()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "android.permission.GET_ACCOUNTS"

    invoke-static {v1, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_0
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v1, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 484
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_1
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-static {v1, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 487
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_2
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "android.permission.USE_SIP"

    invoke-static {v1, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 490
    const-string v1, "android.permission.USE_SIP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 494
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v3, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 495
    const/4 v1, 0x0

    .line 497
    :goto_0
    return v1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method private checkPlayServices()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 873
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    .line 874
    .local v1, "googleAPI":Lcom/google/android/gms/common/GoogleApiAvailability;
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    .line 875
    .local v2, "result":I
    if-eqz v2, :cond_1

    .line 876
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 877
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0x2328

    invoke-virtual {v1, v4, v2, v5}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    .end local v1    # "googleAPI":Lcom/google/android/gms/common/GoogleApiAvailability;
    .end local v2    # "result":I
    :cond_0
    :goto_0
    return v3

    .line 881
    .restart local v1    # "googleAPI":Lcom/google/android/gms/common/GoogleApiAvailability;
    .restart local v2    # "result":I
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 882
    .end local v1    # "googleAPI":Lcom/google/android/gms/common/GoogleApiAvailability;
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 883
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 788
    return-object p0
.end method

.method private getAndSetCallToCountry()V
    .locals 3

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/rami_bar/fun_call/utiles/Functions;->getMyCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->country_code:Ljava/lang/String;

    .line 733
    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->country_code:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 734
    const-string v1, "zz"

    sput-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->country_code:Ljava/lang/String;

    .line 737
    :cond_0
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v1

    sget-object v2, Lcom/rami_bar/fun_call/activities/ActivityMain;->country_code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getCallingCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 739
    .local v0, "calling_country":Ljava/lang/String;
    const-string v1, "zz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 740
    const-string v1, "us"

    invoke-direct {p0, v1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->setCountryToCall(Ljava/lang/String;)V

    .line 744
    :goto_0
    return-void

    .line 742
    :cond_1
    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->setCountryToCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getAppVersionCode(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 960
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 961
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 962
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 964
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getCallerInfo()V
    .locals 8

    .prologue
    .line 1164
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/rami_bar/fun_call/activities/ActivityMain;->setButtonsState(Z)V

    .line 1165
    iget-object v6, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 1167
    new-instance v5, Lcom/rami_bar/fun_call/objects/send/JsonSendCallerInfo;

    invoke-direct {v5}, Lcom/rami_bar/fun_call/objects/send/JsonSendCallerInfo;-><init>()V

    .line 1168
    .local v5, "send":Lcom/rami_bar/fun_call/objects/send/JsonSendCallerInfo;
    sget-object v6, Lcom/rami_bar/fun_call/activities/ActivityMain;->country_code:Ljava/lang/String;

    iput-object v6, v5, Lcom/rami_bar/fun_call/objects/send/JsonSendCallerInfo;->country:Ljava/lang/String;

    .line 1169
    const-string v6, "android"

    iput-object v6, v5, Lcom/rami_bar/fun_call/objects/send/JsonSendCallerInfo;->device:Ljava/lang/String;

    .line 1170
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v6

    invoke-virtual {v6}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/rami_bar/fun_call/objects/send/JsonSendCallerInfo;->email:Ljava/lang/String;

    .line 1171
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/rami_bar/fun_call/utiles/Functions;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/rami_bar/fun_call/objects/send/JsonSendCallerInfo;->app_version:Ljava/lang/String;

    .line 1172
    sget-object v6, Lcom/rami_bar/fun_call/activities/ActivityMain;->notificationAllow:Ljava/lang/String;

    iput-object v6, v5, Lcom/rami_bar/fun_call/objects/send/JsonSendCallerInfo;->allow_push_noti:Ljava/lang/String;

    .line 1173
    sget-object v6, Lcom/rami_bar/fun_call/activities/ActivityMain;->callerIdType:Ljava/lang/String;

    iput-object v6, v5, Lcom/rami_bar/fun_call/objects/send/JsonSendCallerInfo;->callerid_type:Ljava/lang/String;

    .line 1174
    iget v6, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->api_counter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->api_counter:I

    .line 1175
    iget v6, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->api_counter:I

    iput v6, v5, Lcom/rami_bar/fun_call/objects/send/JsonSendCallerInfo;->api_counter:I

    .line 1177
    new-instance v3, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v3}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 1178
    .local v3, "httpClient":Lokhttp3/OkHttpClient$Builder;
    new-instance v2, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;

    invoke-direct {v2}, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;-><init>()V

    .line 1179
    .local v2, "encryptionInterceptor":Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;
    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 1187
    new-instance v6, Lretrofit2/Retrofit$Builder;

    invoke-direct {v6}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v7, Lcom/rami_bar/fun_call/utiles/Constants;->API_VOIP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v6

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v7

    invoke-virtual {v6, v7}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v6

    invoke-virtual {v3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v7

    invoke-virtual {v6, v7}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v4

    .line 1188
    .local v4, "retrofit":Lretrofit2/Retrofit;
    const-class v6, Lcom/rami_bar/fun_call/activities/ActivityMain$CallerInfoInterface;

    invoke-virtual {v4, v6}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/activities/ActivityMain$CallerInfoInterface;

    .line 1189
    .local v0, "anInterface":Lcom/rami_bar/fun_call/activities/ActivityMain$CallerInfoInterface;
    invoke-interface {v0, v5}, Lcom/rami_bar/fun_call/activities/ActivityMain$CallerInfoInterface;->send(Lcom/rami_bar/fun_call/objects/send/JsonSendCallerInfo;)Lretrofit2/Call;

    move-result-object v1

    .line 1190
    .local v1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;>;"
    new-instance v6, Lcom/rami_bar/fun_call/activities/ActivityMain$10;

    invoke-direct {v6, p0}, Lcom/rami_bar/fun_call/activities/ActivityMain$10;-><init>(Lcom/rami_bar/fun_call/activities/ActivityMain;)V

    invoke-interface {v1, v6}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 1253
    return-void
.end method

.method private getCountryFromPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x4

    const/4 v7, 0x0

    .line 714
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-ge v2, v6, :cond_2

    if-ge v2, v12, :cond_2

    .line 715
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 717
    .local v4, "numberCut":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v12, :cond_1

    .line 718
    iget-object v8, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->mCountryCodesList:[Ljava/lang/String;

    array-length v9, v8

    move v6, v7

    :goto_1
    if-ge v6, v9, :cond_1

    aget-object v3, v8, v6

    .line 719
    .local v3, "line":Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, "g":[Ljava/lang/String;
    aget-object v10, v1, v7

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 721
    .local v5, "phoneCode":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v1, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, "countyCode":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 728
    .end local v0    # "countyCode":Ljava/lang/String;
    .end local v1    # "g":[Ljava/lang/String;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "numberCut":Ljava/lang/String;
    .end local v5    # "phoneCode":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 718
    .restart local v0    # "countyCode":Ljava/lang/String;
    .restart local v1    # "g":[Ljava/lang/String;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "numberCut":Ljava/lang/String;
    .restart local v5    # "phoneCode":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 714
    .end local v0    # "countyCode":Ljava/lang/String;
    .end local v1    # "g":[Ljava/lang/String;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "phoneCode":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 728
    .end local v4    # "numberCut":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method private getCountryIndex([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "recourseList"    # [Ljava/lang/String;
    .param p2, "country_code"    # Ljava/lang/String;

    .prologue
    .line 845
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 846
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 850
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 845
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 850
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getEmailFromDeviceOrFile()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 747
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 768
    :goto_0
    return-void

    .line 751
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 752
    .local v1, "device_root":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/rami_bar/fun_call/utiles/Constants;->APPLICATION_FOLDER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 753
    .local v4, "my_dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 754
    .local v0, "created":Z
    new-instance v5, Ljava/io/File;

    const-string v6, "funcall.txt"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->file:Ljava/io/File;

    .line 756
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/rami_bar/fun_call/utiles/Functions;->getUserEmail(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, "email":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_2

    .line 758
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getFileUserId()Ljava/lang/String;

    move-result-object v3

    .line 759
    .local v3, "fileUserId":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .line 760
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->file:Ljava/io/File;

    invoke-static {v5, v6}, Lcom/rami_bar/fun_call/utiles/Functions;->readFromFile(Landroid/app/Activity;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 761
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/rami_bar/fun_call/utiles/SharedUser;->setFileUserId(Ljava/lang/String;)V

    .line 764
    :cond_1
    move-object v2, v3

    .line 767
    .end local v3    # "fileUserId":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/rami_bar/fun_call/utiles/SharedUser;->setEmail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getGcmPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 972
    const-class v0, Lcom/rami_bar/fun_call/activities/ActivityMain;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 909
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getGcmPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 910
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "registration_id"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 911
    .local v3, "registrationId":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 912
    const-string v3, ""

    .line 922
    .end local v3    # "registrationId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 917
    .restart local v3    # "registrationId":Ljava/lang/String;
    :cond_1
    const-string v4, "appVersion"

    const/high16 v5, -0x80000000

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 918
    .local v2, "registeredVersion":I
    invoke-static {p1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getAppVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 919
    .local v0, "currentVersion":I
    if-eq v2, v0, :cond_0

    .line 920
    const-string v3, ""

    goto :goto_0
.end method

.method private getSelectedCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 803
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, "split":[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getViewsID()V
    .locals 1

    .prologue
    .line 375
    const v0, 0x7f100115

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->et_call_num:Landroid/widget/EditText;

    .line 376
    const v0, 0x7f10010d

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->v_background_trans:Landroid/view/View;

    .line 377
    const v0, 0x7f100108

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_cost:Landroid/widget/TextView;

    .line 378
    const v0, 0x7f100109

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_records_left:Landroid/widget/TextView;

    .line 379
    const v0, 0x7f100114

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_prefix:Landroid/widget/TextView;

    .line 380
    const v0, 0x7f1000d6

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sp_country:Landroid/widget/Spinner;

    .line 381
    const v0, 0x7f1000d7

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->iv_country:Landroid/widget/ImageView;

    .line 382
    const v0, 0x7f10011a

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->bt_call:Landroid/support/design/widget/FloatingActionButton;

    .line 383
    const v0, 0x7f100111

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->bt_keyboard:Landroid/support/design/widget/FloatingActionButton;

    .line 384
    const v0, 0x7f100110

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->bt_recordings:Landroid/widget/Button;

    .line 385
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->bt_test_call:Landroid/widget/Button;

    .line 386
    const v0, 0x7f100112

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->ll_main_call_holder:Landroid/widget/LinearLayout;

    .line 387
    const v0, 0x7f10010a

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 388
    const v0, 0x7f10010c

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->vp_suggestions_holder:Landroid/support/v4/view/ViewPager;

    .line 389
    const v0, 0x7f10010b

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rd/PageIndicatorView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    .line 390
    const v0, 0x7f10011b

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sw_record:Landroid/support/v7/widget/SwitchCompat;

    .line 392
    const v0, 0x7f1000e6

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->rb_lowest:Landroid/widget/ImageButton;

    .line 393
    const v0, 0x7f1000e7

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->rb_low:Landroid/widget/ImageButton;

    .line 394
    const v0, 0x7f1000e8

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->rb_normal:Landroid/widget/ImageButton;

    .line 395
    const v0, 0x7f1000e9

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->rb_high:Landroid/widget/ImageButton;

    .line 396
    const v0, 0x7f1000ea

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->rb_highest:Landroid/widget/ImageButton;

    .line 398
    const v0, 0x7f1000ec

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_lowest:Landroid/widget/TextView;

    .line 399
    const v0, 0x7f1000ed

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_low:Landroid/widget/TextView;

    .line 400
    const v0, 0x7f1000ee

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_regular:Landroid/widget/TextView;

    .line 401
    const v0, 0x7f1000ef

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_high:Landroid/widget/TextView;

    .line 402
    const v0, 0x7f1000f0

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_highest:Landroid/widget/TextView;

    .line 403
    return-void
.end method

.method private handleAdvertiserUrl(Ljava/lang/String;)V
    .locals 7
    .param p1, "actionData"    # Ljava/lang/String;

    .prologue
    .line 1346
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/rami_bar/fun_call/utiles/Functions;->openURL(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1348
    new-instance v4, Lcom/rami_bar/fun_call/objects/send/JsonSendAdvertiserId;

    invoke-direct {v4}, Lcom/rami_bar/fun_call/objects/send/JsonSendAdvertiserId;-><init>()V

    .line 1349
    .local v4, "send":Lcom/rami_bar/fun_call/objects/send/JsonSendAdvertiserId;
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/rami_bar/fun_call/objects/send/JsonSendAdvertiserId;->email:Ljava/lang/String;

    .line 1350
    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->mAdvertisingId:Ljava/lang/String;

    iput-object v5, v4, Lcom/rami_bar/fun_call/objects/send/JsonSendAdvertiserId;->advertiser_id:Ljava/lang/String;

    .line 1352
    new-instance v5, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v5}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v6, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;

    invoke-direct {v6}, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;-><init>()V

    invoke-virtual {v5, v6}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 1354
    .local v2, "client":Lokhttp3/OkHttpClient;
    new-instance v5, Lretrofit2/Retrofit$Builder;

    invoke-direct {v5}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v6, Lcom/rami_bar/fun_call/utiles/Constants;->API_VOIP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v5

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v6

    invoke-virtual {v5, v6}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v3

    .line 1355
    .local v3, "retrofit":Lretrofit2/Retrofit;
    const-class v5, Lcom/rami_bar/fun_call/activities/ActivityMain$AdvertiserUrlInterface;

    invoke-virtual {v3, v5}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/activities/ActivityMain$AdvertiserUrlInterface;

    .line 1356
    .local v0, "anInterface":Lcom/rami_bar/fun_call/activities/ActivityMain$AdvertiserUrlInterface;
    invoke-interface {v0, v4}, Lcom/rami_bar/fun_call/activities/ActivityMain$AdvertiserUrlInterface;->send(Lcom/rami_bar/fun_call/objects/send/JsonSendAdvertiserId;)Lretrofit2/Call;

    move-result-object v1

    .line 1357
    .local v1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    new-instance v5, Lcom/rami_bar/fun_call/activities/ActivityMain$12;

    invoke-direct {v5, p0}, Lcom/rami_bar/fun_call/activities/ActivityMain$12;-><init>(Lcom/rami_bar/fun_call/activities/ActivityMain;)V

    invoke-interface {v1, v5}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 1366
    return-void
.end method

.method private handleCallRequest(Ljava/lang/String;)V
    .locals 5
    .param p1, "callingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 557
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0900a3

    invoke-virtual {p0, v1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 559
    invoke-direct {p0, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->setButtonsState(Z)V

    .line 561
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Call"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "no number"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 586
    :goto_0
    return-void

    .line 565
    :cond_0
    sget-object v0, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    if-nez v0, :cond_1

    .line 566
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0900a9

    invoke-virtual {p0, v1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 567
    invoke-direct {p0, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->setButtonsState(Z)V

    .line 569
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Call"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "no internet"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_0

    .line 573
    :cond_1
    sget-object v0, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget v0, v0, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->credit:I

    if-gtz v0, :cond_2

    .line 574
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "you need more time"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 575
    invoke-direct {p0, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->setButtonsState(Z)V

    .line 577
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Call"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "no credit"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_0

    .line 581
    :cond_2
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->mDisplayNumber:Ljava/lang/String;

    .line 582
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->sendCallParameter(Ljava/lang/String;)V

    .line 584
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Call"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "call requested"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 585
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "989009298"

    const-string v2, "1st7CI7C8gcQkqvM1wM"

    const-string v3, "<dial>"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/ads/conversiontracking/GoogleConversionPing;->recordRemarketingPing(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method private handleGcmRegistration()V
    .locals 1

    .prologue
    .line 855
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->checkPlayServices()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 857
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->regid:Ljava/lang/String;

    .line 859
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->regid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 860
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->registerInBackground()V

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->sendRegistrationIdToBackend()V

    goto :goto_0
.end method

.method private handlePermissionBeforeAfter()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 462
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_1

    .line 463
    const/4 v0, 0x0

    .line 475
    :cond_0
    :goto_0
    return v0

    .line 466
    :cond_1
    iget-boolean v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->mDone:Z

    if-nez v1, :cond_0

    .line 467
    iput-boolean v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->mDone:Z

    .line 468
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getEmailFromDeviceOrFile()V

    .line 470
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getAndSetCallToCountry()V

    .line 472
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->handleGcmRegistration()V

    goto :goto_0
.end method

.method private handleViews()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 406
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->et_call_num:Landroid/widget/EditText;

    new-instance v1, Lcom/rami_bar/fun_call/activities/ActivityMain$1;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/ActivityMain$1;-><init>(Lcom/rami_bar/fun_call/activities/ActivityMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 429
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->et_call_num:Landroid/widget/EditText;

    new-instance v1, Lcom/rami_bar/fun_call/activities/ActivityMain$2;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/ActivityMain$2;-><init>(Lcom/rami_bar/fun_call/activities/ActivityMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 439
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 440
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-array v1, v4, [I

    const v2, 0x7f0e002a

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 441
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/16 v1, 0x64

    invoke-virtual {v0, v3, v3, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    .line 443
    invoke-direct {p0, v3}, Lcom/rami_bar/fun_call/activities/ActivityMain;->setButtonsState(Z)V

    .line 445
    const-string v0, "regular"

    sput-object v0, Lcom/rami_bar/fun_call/activities/ActivityMain;->starting_pitch:Ljava/lang/String;

    .line 446
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->rb_normal:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->setSelectedVoice(Landroid/widget/ImageButton;)V

    .line 448
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->hideKeyboard()V

    .line 450
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->setSuggestionPager()V

    .line 452
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sw_record:Landroid/support/v7/widget/SwitchCompat;

    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getIsRecording(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 453
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sw_record:Landroid/support/v7/widget/SwitchCompat;

    new-instance v1, Lcom/rami_bar/fun_call/activities/ActivityMain$3;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/ActivityMain$3;-><init>(Lcom/rami_bar/fun_call/activities/ActivityMain;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 459
    return-void
.end method

.method private hideKeyboard()V
    .locals 4

    .prologue
    .line 508
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->ll_main_call_holder:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->hideViewFromBottom(Landroid/view/View;)V

    .line 509
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->v_background_trans:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 510
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->v_background_trans:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->mKeyboardShown:Z

    .line 512
    return-void
.end method

.method private hideViewFromBottom(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 676
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x40000000    # 2.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 678
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 679
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 680
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 681
    new-instance v1, Lcom/rami_bar/fun_call/activities/ActivityMain$6;

    invoke-direct {v1, p0, p1}, Lcom/rami_bar/fun_call/activities/ActivityMain$6;-><init>(Lcom/rami_bar/fun_call/activities/ActivityMain;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 699
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 700
    return-void
.end method

.method private hideViewFromTop(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 649
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 651
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 652
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 653
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 654
    new-instance v1, Lcom/rami_bar/fun_call/activities/ActivityMain$5;

    invoke-direct {v1, p0, p1}, Lcom/rami_bar/fun_call/activities/ActivityMain$5;-><init>(Lcom/rami_bar/fun_call/activities/ActivityMain;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 672
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 673
    return-void
.end method

.method private initMediaVoices()V
    .locals 2

    .prologue
    .line 796
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sound_high:Landroid/media/MediaPlayer;

    .line 797
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080001

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sound_highest:Landroid/media/MediaPlayer;

    .line 798
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080003

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sound_lowest:Landroid/media/MediaPlayer;

    .line 799
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080002

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sound_low:Landroid/media/MediaPlayer;

    .line 800
    return-void
.end method

.method private initSDKs()V
    .locals 6

    .prologue
    .line 771
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, "email":Ljava/lang/String;
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lio/fabric/sdk/android/Kit;

    const/4 v3, 0x0

    new-instance v4, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v4}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 774
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->setUserIdentifier(Ljava/lang/String;)V

    .line 776
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->initVoipManager()V

    .line 778
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "989009298"

    const-string v3, "3ID7CI627AcQkqvM1wM"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/ads/conversiontracking/GoogleConversionPing;->recordRemarketingPing(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 780
    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-boolean v1, v1, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->allow_one_audience:Z

    if-eqz v1, :cond_0

    .line 781
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "FB9185FC-37B2-4265-8826-177DB0801F68"

    invoke-static {v1, v2}, Lcom/oneaudience/sdk/OneAudience;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 784
    :cond_0
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "3a706732347c4471920a20e61edae12b"

    invoke-static {v1, v2}, Lnet/pubnative/sdk/core/Pubnative;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 785
    return-void
.end method

.method private initVoipManager()V
    .locals 3

    .prologue
    .line 792
    invoke-static {}, Lcom/rami_bar/fun_call/voip/VoipManager;->getInstance()Lcom/rami_bar/fun_call/voip/VoipManager;

    move-result-object v0

    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->voip_exten:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/rami_bar/fun_call/voip/VoipManager;->setup(Ljava/util/ArrayList;Landroid/app/Activity;)V

    .line 793
    return-void
.end method

.method private makeCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "operator_num"    # Ljava/lang/String;
    .param p2, "displayNumber"    # Ljava/lang/String;

    .prologue
    .line 977
    :try_start_0
    invoke-static {}, Lcom/rami_bar/fun_call/voip/VoipManager;->getInstance()Lcom/rami_bar/fun_call/voip/VoipManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/rami_bar/fun_call/voip/VoipManager;->dial(Ljava/lang/String;)V

    .line 978
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/rami_bar/fun_call/activities/ActivityDialer;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 979
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "call_number"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 980
    const/16 v2, 0x65

    invoke-virtual {p0, v1, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 982
    sget-object v2, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v3, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    const-string v4, "Call"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    const-string v4, "Called :)"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 983
    :catch_0
    move-exception v0

    .line 984
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private openPopup5Stars()V
    .locals 4

    .prologue
    .line 1057
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1069
    :goto_0
    return-void

    .line 1061
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/rami_bar/fun_call/activities/ActivityPopup;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1062
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/rami_bar/fun_call/objects/Popup;

    invoke-direct {v1}, Lcom/rami_bar/fun_call/objects/Popup;-><init>()V

    .line 1063
    .local v1, "popup":Lcom/rami_bar/fun_call/objects/Popup;
    const v2, 0x7f0900bf

    invoke-virtual {p0, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rami_bar/fun_call/objects/Popup;->titleText:Ljava/lang/String;

    .line 1064
    const v2, 0x7f09009e

    invoke-virtual {p0, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rami_bar/fun_call/objects/Popup;->messageText:Ljava/lang/String;

    .line 1065
    const v2, 0x7f0900ea

    invoke-virtual {p0, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rami_bar/fun_call/objects/Popup;->approveButtonText:Ljava/lang/String;

    .line 1066
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/rami_bar/fun_call/objects/Popup;->cancelable:Z

    .line 1067
    sget-object v2, Lcom/rami_bar/fun_call/utiles/Constants;->INTENT_POPUP:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1068
    const/16 v2, 0x68

    invoke-virtual {p0, v0, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private openPopupCallLessTime(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1017
    :goto_0
    return-void

    .line 1008
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/rami_bar/fun_call/activities/ActivityPopup;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1009
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/rami_bar/fun_call/objects/Popup;

    invoke-direct {v1}, Lcom/rami_bar/fun_call/objects/Popup;-><init>()V

    .line 1010
    .local v1, "popup":Lcom/rami_bar/fun_call/objects/Popup;
    const v2, 0x7f0900b0

    invoke-virtual {p0, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rami_bar/fun_call/objects/Popup;->titleText:Ljava/lang/String;

    .line 1011
    iput-object p1, v1, Lcom/rami_bar/fun_call/objects/Popup;->messageText:Ljava/lang/String;

    .line 1012
    const v2, 0x7f090083

    invoke-virtual {p0, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rami_bar/fun_call/objects/Popup;->approveButtonText:Ljava/lang/String;

    .line 1013
    const v2, 0x7f090084

    invoke-virtual {p0, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rami_bar/fun_call/objects/Popup;->declineButtonText:Ljava/lang/String;

    .line 1014
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/rami_bar/fun_call/objects/Popup;->cancelable:Z

    .line 1015
    sget-object v2, Lcom/rami_bar/fun_call/utiles/Constants;->INTENT_POPUP:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1016
    const/16 v2, 0x69

    invoke-virtual {p0, v0, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private openPopupExitApp()V
    .locals 7

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1045
    :goto_0
    return-void

    .line 1024
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/rami_bar/fun_call/activities/ActivityPopup;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1025
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Lcom/rami_bar/fun_call/objects/Popup;

    invoke-direct {v3}, Lcom/rami_bar/fun_call/objects/Popup;-><init>()V

    .line 1026
    .local v3, "popup":Lcom/rami_bar/fun_call/objects/Popup;
    const v4, 0x7f090093

    invoke-virtual {p0, v4}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/rami_bar/fun_call/objects/Popup;->titleText:Ljava/lang/String;

    .line 1028
    const/4 v0, 0x0

    .line 1030
    .local v0, "actionData":Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v4, v4, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->message_list:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->mAdapterPagerSuggestions:Lcom/rami_bar/fun_call/adapters/AdapterPagerSuggestions;

    const-string v6, "daily_bonus"

    invoke-virtual {v5, v6}, Lcom/rami_bar/fun_call/adapters/AdapterPagerSuggestions;->getFragmentPosition(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rami_bar/fun_call/objects/receive/Suggestion;

    iget-object v0, v4, Lcom/rami_bar/fun_call/objects/receive/Suggestion;->action_data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    :goto_1
    const-string v4, "ready"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1035
    const v4, 0x7f090091

    invoke-virtual {p0, v4}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/rami_bar/fun_call/objects/Popup;->messageText:Ljava/lang/String;

    .line 1040
    :goto_2
    const v4, 0x7f0900e5

    invoke-virtual {p0, v4}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/rami_bar/fun_call/objects/Popup;->approveButtonText:Ljava/lang/String;

    .line 1041
    const v4, 0x7f090090

    invoke-virtual {p0, v4}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/rami_bar/fun_call/objects/Popup;->declineButtonText:Ljava/lang/String;

    .line 1042
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/rami_bar/fun_call/objects/Popup;->cancelable:Z

    .line 1043
    sget-object v4, Lcom/rami_bar/fun_call/utiles/Constants;->INTENT_POPUP:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1044
    const/16 v4, 0x6a

    invoke-virtual {p0, v2, v4}, Lcom/rami_bar/fun_call/activities/ActivityMain;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1031
    :catch_0
    move-exception v1

    .line 1032
    .local v1, "e":Ljava/lang/Exception;
    const-string v0, ""

    goto :goto_1

    .line 1037
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const v4, 0x7f090092

    invoke-virtual {p0, v4}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/rami_bar/fun_call/objects/Popup;->messageText:Ljava/lang/String;

    goto :goto_2
.end method

.method private openPopupLike()V
    .locals 3

    .prologue
    .line 1048
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1054
    :goto_0
    return-void

    .line 1052
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/rami_bar/fun_call/activities/ActivityLikePopup;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1053
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private openPopupNoInternet()V
    .locals 4

    .prologue
    .line 989
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1001
    :goto_0
    return-void

    .line 993
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/rami_bar/fun_call/activities/ActivityPopup;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 994
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/rami_bar/fun_call/objects/Popup;

    invoke-direct {v1}, Lcom/rami_bar/fun_call/objects/Popup;-><init>()V

    .line 995
    .local v1, "popup":Lcom/rami_bar/fun_call/objects/Popup;
    const v2, 0x7f0900b2

    invoke-virtual {p0, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rami_bar/fun_call/objects/Popup;->titleText:Ljava/lang/String;

    .line 996
    const v2, 0x7f09008d

    invoke-virtual {p0, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rami_bar/fun_call/objects/Popup;->messageText:Ljava/lang/String;

    .line 997
    const v2, 0x7f0900cf

    invoke-virtual {p0, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rami_bar/fun_call/objects/Popup;->approveButtonText:Ljava/lang/String;

    .line 998
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/rami_bar/fun_call/objects/Popup;->cancelable:Z

    .line 999
    sget-object v2, Lcom/rami_bar/fun_call/utiles/Constants;->INTENT_POPUP:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1000
    const/16 v2, 0x66

    invoke-virtual {p0, v0, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private registerInBackground()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 930
    new-instance v0, Lcom/rami_bar/fun_call/activities/ActivityMain$8;

    invoke-direct {v0, p0}, Lcom/rami_bar/fun_call/activities/ActivityMain$8;-><init>(Lcom/rami_bar/fun_call/activities/ActivityMain;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    .line 952
    invoke-virtual {v0, v1}, Lcom/rami_bar/fun_call/activities/ActivityMain$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 953
    return-void
.end method

.method private rotateView(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 614
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 615
    .local v0, "rotateAnimation":Landroid/view/animation/RotateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 616
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 617
    new-instance v1, Lcom/rami_bar/fun_call/activities/ActivityMain$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain$4;-><init>(Lcom/rami_bar/fun_call/activities/ActivityMain;Landroid/view/View;Landroid/view/animation/RotateAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 634
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 635
    return-void
.end method

.method private sendCallParameter(Ljava/lang/String;)V
    .locals 7
    .param p1, "callingNumber"    # Ljava/lang/String;

    .prologue
    .line 1093
    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->bt_call:Landroid/support/design/widget/FloatingActionButton;

    invoke-direct {p0, v5}, Lcom/rami_bar/fun_call/activities/ActivityMain;->rotateView(Landroid/view/View;)V

    .line 1094
    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->bt_keyboard:Landroid/support/design/widget/FloatingActionButton;

    invoke-direct {p0, v5}, Lcom/rami_bar/fun_call/activities/ActivityMain;->rotateView(Landroid/view/View;)V

    .line 1095
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/rami_bar/fun_call/activities/ActivityMain;->setButtonsState(Z)V

    .line 1097
    new-instance v4, Lcom/rami_bar/fun_call/objects/send/JsonSendCallParams;

    invoke-direct {v4}, Lcom/rami_bar/fun_call/objects/send/JsonSendCallParams;-><init>()V

    .line 1098
    .local v4, "send":Lcom/rami_bar/fun_call/objects/send/JsonSendCallParams;
    sget-object v5, Lcom/rami_bar/fun_call/activities/ActivityMain;->country_code:Ljava/lang/String;

    iput-object v5, v4, Lcom/rami_bar/fun_call/objects/send/JsonSendCallParams;->user_country:Ljava/lang/String;

    .line 1099
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getSelectedCountryCode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/rami_bar/fun_call/objects/send/JsonSendCallParams;->dial_country:Ljava/lang/String;

    .line 1100
    iput-object p1, v4, Lcom/rami_bar/fun_call/objects/send/JsonSendCallParams;->dial_number:Ljava/lang/String;

    .line 1101
    const-string v5, "android"

    iput-object v5, v4, Lcom/rami_bar/fun_call/objects/send/JsonSendCallParams;->device:Ljava/lang/String;

    .line 1102
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/rami_bar/fun_call/objects/send/JsonSendCallParams;->email:Ljava/lang/String;

    .line 1103
    sget-object v5, Lcom/rami_bar/fun_call/activities/ActivityMain;->starting_pitch:Ljava/lang/String;

    iput-object v5, v4, Lcom/rami_bar/fun_call/objects/send/JsonSendCallParams;->starting_pitch:Ljava/lang/String;

    .line 1104
    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sw_record:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v5}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v5

    iput-boolean v5, v4, Lcom/rami_bar/fun_call/objects/send/JsonSendCallParams;->record_call:Z

    .line 1106
    new-instance v5, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v5}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v6, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;

    invoke-direct {v6}, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;-><init>()V

    invoke-virtual {v5, v6}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 1108
    .local v2, "client":Lokhttp3/OkHttpClient;
    new-instance v5, Lretrofit2/Retrofit$Builder;

    invoke-direct {v5}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v6, Lcom/rami_bar/fun_call/utiles/Constants;->API_VOIP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v5

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v6

    invoke-virtual {v5, v6}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v3

    .line 1109
    .local v3, "retrofit":Lretrofit2/Retrofit;
    const-class v5, Lcom/rami_bar/fun_call/activities/ActivityMain$CallRequestInterface;

    invoke-virtual {v3, v5}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/activities/ActivityMain$CallRequestInterface;

    .line 1110
    .local v0, "anInterface":Lcom/rami_bar/fun_call/activities/ActivityMain$CallRequestInterface;
    invoke-interface {v0, v4}, Lcom/rami_bar/fun_call/activities/ActivityMain$CallRequestInterface;->send(Lcom/rami_bar/fun_call/objects/send/JsonSendCallParams;)Lretrofit2/Call;

    move-result-object v1

    .line 1111
    .local v1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;>;"
    new-instance v5, Lcom/rami_bar/fun_call/activities/ActivityMain$9;

    invoke-direct {v5, p0}, Lcom/rami_bar/fun_call/activities/ActivityMain$9;-><init>(Lcom/rami_bar/fun_call/activities/ActivityMain;)V

    invoke-interface {v1, v5}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 1156
    return-void
.end method

.method private sendRegistrationIdToBackend()V
    .locals 7

    .prologue
    .line 1261
    new-instance v4, Lcom/rami_bar/fun_call/objects/send/JsonSendPushToken;

    invoke-direct {v4}, Lcom/rami_bar/fun_call/objects/send/JsonSendPushToken;-><init>()V

    .line 1262
    .local v4, "send":Lcom/rami_bar/fun_call/objects/send/JsonSendPushToken;
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/rami_bar/fun_call/objects/send/JsonSendPushToken;->email:Ljava/lang/String;

    .line 1263
    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->regid:Ljava/lang/String;

    iput-object v5, v4, Lcom/rami_bar/fun_call/objects/send/JsonSendPushToken;->token:Ljava/lang/String;

    .line 1264
    const-string v5, "android"

    iput-object v5, v4, Lcom/rami_bar/fun_call/objects/send/JsonSendPushToken;->device:Ljava/lang/String;

    .line 1266
    new-instance v5, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v5}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v6, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;

    invoke-direct {v6}, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;-><init>()V

    invoke-virtual {v5, v6}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 1268
    .local v2, "client":Lokhttp3/OkHttpClient;
    new-instance v5, Lretrofit2/Retrofit$Builder;

    invoke-direct {v5}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v6, Lcom/rami_bar/fun_call/utiles/Constants;->API_VOIP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v5

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v6

    invoke-virtual {v5, v6}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v3

    .line 1269
    .local v3, "retrofit":Lretrofit2/Retrofit;
    const-class v5, Lcom/rami_bar/fun_call/activities/ActivityMain$PushNotificationRegistrationInterface;

    invoke-virtual {v3, v5}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/activities/ActivityMain$PushNotificationRegistrationInterface;

    .line 1270
    .local v0, "anInterface":Lcom/rami_bar/fun_call/activities/ActivityMain$PushNotificationRegistrationInterface;
    invoke-interface {v0, v4}, Lcom/rami_bar/fun_call/activities/ActivityMain$PushNotificationRegistrationInterface;->send(Lcom/rami_bar/fun_call/objects/send/JsonSendPushToken;)Lretrofit2/Call;

    move-result-object v1

    .line 1271
    .local v1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    new-instance v5, Lcom/rami_bar/fun_call/activities/ActivityMain$11;

    invoke-direct {v5, p0}, Lcom/rami_bar/fun_call/activities/ActivityMain$11;-><init>(Lcom/rami_bar/fun_call/activities/ActivityMain;)V

    invoke-interface {v1, v5}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 1298
    return-void
.end method

.method private setButtonsState(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 515
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->bt_recordings:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 516
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->bt_test_call:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 517
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->bt_call:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    .line 518
    return-void
.end method

.method private setCountryToCall(Ljava/lang/String;)V
    .locals 6
    .param p1, "country_iso"    # Ljava/lang/String;

    .prologue
    .line 808
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 842
    :goto_0
    return-void

    .line 811
    :cond_0
    new-instance v3, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;

    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->mCountryCodesList:[Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->country_list_adapter:Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;

    .line 812
    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sp_country:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->country_list_adapter:Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 814
    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->mCountryCodesList:[Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getCountryIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 815
    .local v1, "index_country":I
    if-ltz v1, :cond_1

    .line 816
    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_prefix:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->country_list_adapter:Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;

    invoke-virtual {v4, v1}, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;->GetCountryCallingCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 818
    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->et_call_num:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_prefix:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, "number":Ljava/lang/String;
    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->et_call_num:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 821
    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->country_list_adapter:Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;

    invoke-virtual {v3, v1}, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;->getCountryImageResource(I)I

    move-result v0

    .line 822
    .local v0, "img":I
    if-lez v0, :cond_1

    .line 823
    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->iv_country:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 827
    .end local v0    # "img":I
    .end local v2    # "number":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sp_country:Landroid/widget/Spinner;

    new-instance v4, Lcom/rami_bar/fun_call/activities/ActivityMain$7;

    invoke-direct {v4, p0}, Lcom/rami_bar/fun_call/activities/ActivityMain$7;-><init>(Lcom/rami_bar/fun_call/activities/ActivityMain;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0
.end method

.method private setSelectedVoice(Landroid/widget/ImageButton;)V
    .locals 5
    .param p1, "v"    # Landroid/widget/ImageButton;

    .prologue
    const/4 v4, 0x0

    .line 521
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 522
    .local v0, "notSelectedColor":I
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 524
    .local v1, "selectedColor":I
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->rb_highest:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 525
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->rb_high:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 526
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->rb_normal:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 527
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->rb_low:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 528
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->rb_lowest:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 530
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_highest:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 531
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_high:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 532
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_regular:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 533
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_low:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 534
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_lowest:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 536
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 537
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 554
    :goto_0
    return-void

    .line 539
    :pswitch_0
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_lowest:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 542
    :pswitch_1
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_low:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 545
    :pswitch_2
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_regular:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 548
    :pswitch_3
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_high:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 551
    :pswitch_4
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_highest:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x7f1000e6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setSuggestionPager()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 603
    new-instance v0, Lcom/rami_bar/fun_call/adapters/AdapterPagerSuggestions;

    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/rami_bar/fun_call/adapters/AdapterPagerSuggestions;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->mAdapterPagerSuggestions:Lcom/rami_bar/fun_call/adapters/AdapterPagerSuggestions;

    .line 604
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->vp_suggestions_holder:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->mAdapterPagerSuggestions:Lcom/rami_bar/fun_call/adapters/AdapterPagerSuggestions;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 605
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->vp_suggestions_holder:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setClipChildren(Z)V

    .line 606
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->vp_suggestions_holder:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 607
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->vp_suggestions_holder:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/rami_bar/fun_call/utiles/CarouselEffectTransformer;

    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/rami_bar/fun_call/utiles/CarouselEffectTransformer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 608
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    sget-object v1, Lcom/rd/animation/type/AnimationType;->SCALE:Lcom/rd/animation/type/AnimationType;

    invoke-virtual {v0, v1}, Lcom/rd/PageIndicatorView;->setAnimationType(Lcom/rd/animation/type/AnimationType;)V

    .line 609
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lcom/rd/PageIndicatorView;->setAnimationDuration(J)V

    .line 610
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    invoke-virtual {v0, v4}, Lcom/rd/PageIndicatorView;->setInteractiveAnimation(Z)V

    .line 611
    return-void
.end method

.method private showKeyboard()V
    .locals 4

    .prologue
    .line 501
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->ll_main_call_holder:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->showViewFromBottom(Landroid/view/View;)V

    .line 502
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->v_background_trans:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 503
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->v_background_trans:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->mKeyboardShown:Z

    .line 505
    return-void
.end method

.method private static showViewFromBottom(Landroid/view/View;)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 703
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 704
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x40000000    # 2.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 706
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 707
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 708
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 710
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 711
    return-void
.end method

.method public static showViewFromTop(Landroid/view/View;)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 638
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 639
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 641
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 642
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 643
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 645
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 646
    return-void
.end method

.method private storeRegistrationId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "regId"    # Ljava/lang/String;

    .prologue
    .line 894
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getGcmPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 895
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getAppVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 896
    .local v0, "appVersion":I
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 897
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "registration_id"

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 898
    const-string v3, "appVersion"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 899
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 900
    return-void
.end method

.method private updateSuggestionsPager(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/Suggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p1, "message_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/rami_bar/fun_call/objects/receive/Suggestion;>;"
    if-nez p1, :cond_0

    .line 600
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->mAdapterPagerSuggestions:Lcom/rami_bar/fun_call/adapters/AdapterPagerSuggestions;

    invoke-virtual {v0}, Lcom/rami_bar/fun_call/adapters/AdapterPagerSuggestions;->getCount()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 594
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->setSuggestionPager()V

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->mAdapterPagerSuggestions:Lcom/rami_bar/fun_call/adapters/AdapterPagerSuggestions;

    invoke-virtual {v0, p1}, Lcom/rami_bar/fun_call/adapters/AdapterPagerSuggestions;->setList(Ljava/util/ArrayList;)V

    .line 598
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->vp_suggestions_holder:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 599
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->vp_suggestions_holder:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/rd/PageIndicatorView;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    goto :goto_0
.end method


# virtual methods
.method public callNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "callingNumber"    # Ljava/lang/String;

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->et_call_num:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 1079
    :goto_0
    return-void

    .line 1076
    :cond_0
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->showKeyboard()V

    .line 1077
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->et_call_num:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->handleCallRequest(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "reqCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const v10, 0x7f0900aa

    const/4 v2, 0x0

    .line 1378
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1380
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 1448
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1384
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1387
    :sswitch_1
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1388
    .local v1, "contactData":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1389
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1390
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1391
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1392
    .local v9, "number":Ljava/lang/String;
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->et_call_num:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1397
    .end local v9    # "number":Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1399
    .end local v1    # "contactData":Landroid/net/Uri;
    .end local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 1400
    .local v7, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->et_call_num:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1401
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->et_call_num:Landroid/widget/EditText;

    invoke-virtual {p0, v10}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1402
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1394
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v1    # "contactData":Landroid/net/Uri;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->et_call_num:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1395
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->et_call_num:Landroid/widget/EditText;

    const v2, 0x7f0900aa

    invoke-virtual {p0, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1406
    .end local v1    # "contactData":Landroid/net/Uri;
    .end local v6    # "c":Landroid/database/Cursor;
    :sswitch_2
    sget-object v0, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    if-eqz v0, :cond_0

    .line 1407
    sget-object v0, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget v0, v0, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->total_answer_calls:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    sget-object v0, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget v0, v0, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->total_answer_calls:I

    const/16 v2, 0x14

    if-eq v0, v2, :cond_3

    sget-object v0, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget v0, v0, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->total_answer_calls:I

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_0

    .line 1408
    :cond_3
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->openPopupLike()V

    goto :goto_0

    .line 1413
    :sswitch_3
    sget-object v0, Lcom/rami_bar/fun_call/utiles/Constants;->INTENT_POPUP_ACTION:Ljava/lang/String;

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->operatorNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->mDisplayNumber:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->makeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "Call"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "approved less time"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1422
    :sswitch_4
    sget-object v0, Lcom/rami_bar/fun_call/utiles/Constants;->INTENT_POPUP_ACTION:Ljava/lang/String;

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1423
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->openPopup5Stars()V

    .line 1424
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "Like"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "Liked"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1426
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/rami_bar/fun_call/activities/ActivityEmail;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->startActivity(Landroid/content/Intent;)V

    .line 1427
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "Like"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "Not Liked"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1431
    :sswitch_5
    sget-object v0, Lcom/rami_bar/fun_call/utiles/Constants;->INTENT_POPUP_ACTION:Ljava/lang/String;

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1432
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0900d8

    invoke-virtual {p0, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/rami_bar/fun_call/utiles/Functions;->openURL(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1433
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "Like"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "Open Play"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1437
    :sswitch_6
    sget-object v0, Lcom/rami_bar/fun_call/utiles/Constants;->INTENT_POPUP_ACTION:Ljava/lang/String;

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1438
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->finish()V

    goto/16 :goto_0

    .line 1442
    :sswitch_7
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    .line 1443
    .local v8, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v8, :cond_5

    .line 1444
    invoke-virtual {v8, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_2

    .line 1384
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_0
        0x67 -> :sswitch_4
        0x68 -> :sswitch_5
        0x69 -> :sswitch_3
        0x6a -> :sswitch_6
        0x3e9 -> :sswitch_7
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->mKeyboardShown:Z

    if-eqz v0, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->hideKeyboard()V

    .line 348
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->openPopupExitApp()V

    goto :goto_0
.end method

.method public onCall(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->setButtonsState(Z)V

    .line 262
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->et_call_num:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->handleCallRequest(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public onContacts(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 285
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 286
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 288
    sget-object v2, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v3, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v4, "ActivityMain"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    const-string v4, "Tabs"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    const-string v4, "Contacts"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCountrySpinnerImage(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 297
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "ActivityMain"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Tabs"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Country"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 298
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 180
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    const v4, 0x7f04001e

    invoke-virtual {p0, v4}, Lcom/rami_bar/fun_call/activities/ActivityMain;->setContentView(I)V

    .line 184
    iput-boolean v6, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sdkInitialized:Z

    .line 186
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 188
    .local v3, "nm":Landroid/app/NotificationManager;
    :try_start_0
    invoke-virtual {v3}, Landroid/app/NotificationManager;->cancelAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->mCountryCodesList:[Ljava/lang/String;

    .line 195
    new-instance v4, Lcom/rami_bar/fun_call/activities/ActivityMain$GetAdvertisingIdTask;

    invoke-direct {v4, p0, v7}, Lcom/rami_bar/fun_call/activities/ActivityMain$GetAdvertisingIdTask;-><init>(Lcom/rami_bar/fun_call/activities/ActivityMain;Lcom/rami_bar/fun_call/activities/ActivityMain$1;)V

    new-array v5, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/rami_bar/fun_call/activities/ActivityMain$GetAdvertisingIdTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 197
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getViewsID()V

    .line 199
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->handleViews()V

    .line 201
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getCounter()I

    move-result v0

    .line 202
    .local v0, "app_start_counter":I
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->setCounter(I)V

    .line 204
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "get_caller_info"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 205
    .local v2, "filter":Landroid/content/IntentFilter;
    new-instance v4, Lcom/rami_bar/fun_call/activities/ActivityMain$Receiver;

    invoke-direct {v4, p0, v7}, Lcom/rami_bar/fun_call/activities/ActivityMain$Receiver;-><init>(Lcom/rami_bar/fun_call/activities/ActivityMain;Lcom/rami_bar/fun_call/activities/ActivityMain$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 207
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getOrderJson()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v6

    invoke-virtual {v6}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->sendPurchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void

    .line 189
    .end local v0    # "app_start_counter":I
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDTMF(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 302
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 331
    :goto_0
    check-cast p1, Landroid/widget/ImageButton;

    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->setSelectedVoice(Landroid/widget/ImageButton;)V

    .line 333
    sget-object v1, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "Voices"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    sget-object v3, Lcom/rami_bar/fun_call/activities/ActivityMain;->starting_pitch:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 338
    :goto_1
    return-void

    .line 304
    .restart local p1    # "v":Landroid/view/View;
    :pswitch_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sound_highest:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sound_highest:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 307
    :cond_0
    const-string v1, "highest"

    sput-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->starting_pitch:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    .end local p1    # "v":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 310
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p1    # "v":Landroid/view/View;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sound_high:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sound_high:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 313
    :cond_1
    const-string v1, "high"

    sput-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->starting_pitch:Ljava/lang/String;

    goto :goto_0

    .line 316
    :pswitch_2
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sound_low:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 317
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sound_low:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 319
    :cond_2
    const-string v1, "low"

    sput-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->starting_pitch:Ljava/lang/String;

    goto :goto_0

    .line 322
    :pswitch_3
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sound_lowest:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    .line 323
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->sound_lowest:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 325
    :cond_3
    const-string v1, "lowest"

    sput-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->starting_pitch:Ljava/lang/String;

    goto :goto_0

    .line 328
    :pswitch_4
    const-string v1, "regular"

    sput-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->starting_pitch:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x7f1000e6
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 244
    invoke-static {}, Lcom/rami_bar/fun_call/voip/VoipManager;->getInstance()Lcom/rami_bar/fun_call/voip/VoipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rami_bar/fun_call/voip/VoipManager;->destroy()V

    .line 246
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 247
    return-void
.end method

.method public onKeyboard(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->showKeyboard()V

    .line 369
    return-void
.end method

.method public onKeyboardDown(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->hideKeyboard()V

    .line 365
    return-void
.end method

.method public onKeyboardKeyPress(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 351
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->et_call_num:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f100118

    if-ne v1, v2, :cond_1

    .line 353
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 359
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->et_call_num:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 360
    return-void

    .line 357
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Landroid/widget/Button;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 225
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 227
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->onPause(Landroid/app/Activity;)V

    .line 228
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1452
    packed-switch p1, :pswitch_data_0

    .line 1472
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1475
    :goto_0
    return-void

    .line 1454
    :pswitch_0
    const/4 v0, 0x0

    .line 1455
    .local v0, "deniedCounter":I
    array-length v3, p3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget v1, p3, v2

    .line 1456
    .local v1, "grantResult":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 1457
    add-int/lit8 v0, v0, 0x1

    .line 1455
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1461
    .end local v1    # "grantResult":I
    :cond_1
    if-lez v0, :cond_2

    .line 1462
    sget-object v2, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v3, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    const-string v4, "permissions"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    const-string v4, "denied"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 1463
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0900bb

    invoke-virtual {p0, v3}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/rami_bar/fun_call/utiles/Functions;->openPopupMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1464
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->finish()V

    goto :goto_0

    .line 1468
    :cond_2
    sget-object v2, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v3, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    const-string v4, "permissions"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    const-string v4, "granted"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_0

    .line 1452
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 214
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->handlePermissionBeforeAfter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getCallerInfo()V

    .line 220
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->onResume(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onSettings(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 270
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/rami_bar/fun_call/activities/ActivitySettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->startActivity(Landroid/content/Intent;)V

    .line 272
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "ActivityMain"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Tabs"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "More"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 273
    return-void
.end method

.method public onShowBilling(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->vp_suggestions_holder:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->mAdapterPagerSuggestions:Lcom/rami_bar/fun_call/adapters/AdapterPagerSuggestions;

    const-string v2, "purchase"

    invoke-virtual {v1, v2}, Lcom/rami_bar/fun_call/adapters/AdapterPagerSuggestions;->getFragmentPosition(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 267
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 233
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 234
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 239
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 240
    return-void
.end method

.method public onTestCall(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->setButtonsState(Z)V

    .line 278
    const-string v0, "Demo Call"

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->mDisplayNumber:Ljava/lang/String;

    .line 279
    const-string v0, "test-call"

    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->sendCallParameter(Ljava/lang/String;)V

    .line 280
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "ActivityMain"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Demo Call"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "click"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 281
    return-void
.end method

.method public setRecordsLeft(I)V
    .locals 2
    .param p1, "recordsLeft"    # I

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_records_left:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1087
    :goto_0
    return-void

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_records_left:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
