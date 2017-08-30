.class public final Lfr/acetelecom/vc/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/tapjoy/TJEarnedCurrencyListener;
.implements Lcom/tapjoy/TJGetCurrencyBalanceListener;
.implements Lcom/tapjoy/TJPlacementListener;
.implements Lcom/tapjoy/TJSpendCurrencyListener;
.implements Lfr/acetelecom/vc/c$a;
.implements Lfr/acetelecom/vc/n$a;
.implements Lfr/acetelecom/vc/o$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/acetelecom/vc/MainActivity$a;
    }
.end annotation


# static fields
.field private static R:Lfr/acetelecom/vc/MainActivity;

.field private static final ab:[Ljava/lang/String;

.field private static final ac:[I

.field private static ad:[Ljava/lang/String;

.field private static final ae:[I


# instance fields
.field private A:Landroid/widget/ImageButton;

.field private B:Landroid/widget/Switch;

.field private C:Landroid/widget/Switch;

.field private D:Lfr/acetelecom/vc/b;

.field private E:Z

.field private F:Landroid/widget/EditText;

.field private G:Ljava/lang/String;

.field private H:Lorg/json/JSONArray;

.field private I:Lorg/json/JSONArray;

.field private J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end field

.field private K:Ljava/util/HashMap;

.field private L:Z

.field private M:Landroid/content/Intent;

.field private N:Z

.field private O:Lfr/acetelecom/vc/c;

.field private P:Lfr/acetelecom/vc/n;

.field private Q:Landroid/content/BroadcastReceiver;

.field private final S:Lfr/acetelecom/vc/c/d$c;

.field private final T:Lfr/acetelecom/vc/c/d$a;

.field private final U:Lfr/acetelecom/vc/c/d$e;

.field private final V:Lcom/fyber/requesters/RequestCallback;

.field private final W:Lcom/fyber/requesters/VirtualCurrencyCallback;

.field private X:I

.field private final Y:Ljava/lang/Runnable;

.field private final Z:Ljava/lang/Runnable;

.field a:Lcom/fyber/requesters/OfferWallRequester;

.field private final aa:Ljava/lang/Runnable;

.field b:Landroid/support/v4/view/ViewPager;

.field c:Landroid/widget/TextView;

.field d:I

.field e:Lcom/google/firebase/a/a;

.field f:I

.field private g:Lcom/digits/sdk/android/g;

.field private h:Lcom/digits/sdk/android/aw;

.field private i:Landroid/widget/PopupWindow;

.field private j:Landroid/widget/PopupWindow;

.field private k:Lfr/acetelecom/vc/p;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Landroid/app/ProgressDialog;

.field private o:Ljava/lang/String;

.field private p:Landroid/view/View;

.field private q:I

.field private r:Lcom/tapjoy/TJActionRequest;

.field private s:Lcom/tapjoy/TJPlacement;

.field private t:Lfr/acetelecom/vc/c/d;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:J

.field private z:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x3

    invoke-static {v3}, Landroid/support/v7/app/c;->a(Z)V

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v4

    const-string v1, "android.permission.GET_ACCOUNTS"

    aput-object v1, v0, v3

    const-string v1, "android.permission.READ_SMS"

    aput-object v1, v0, v5

    sput-object v0, Lfr/acetelecom/vc/MainActivity;->ab:[Ljava/lang/String;

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lfr/acetelecom/vc/MainActivity;->ac:[I

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v4

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v5

    sput-object v0, Lfr/acetelecom/vc/MainActivity;->ad:[Ljava/lang/String;

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lfr/acetelecom/vc/MainActivity;->ae:[I

    return-void

    :array_0
    .array-data 4
        0x7f070097
        0x7f070096
        0x7f070098
    .end array-data

    :array_1
    .array-data 4
        0x7f070095
        0x7f070099
        0x7f070099
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    iput-object v2, p0, Lfr/acetelecom/vc/MainActivity;->a:Lcom/fyber/requesters/OfferWallRequester;

    iput-object v2, p0, Lfr/acetelecom/vc/MainActivity;->h:Lcom/digits/sdk/android/aw;

    iput-object v2, p0, Lfr/acetelecom/vc/MainActivity;->k:Lfr/acetelecom/vc/p;

    const/16 v0, 0xc

    iput v0, p0, Lfr/acetelecom/vc/MainActivity;->q:I

    iput-object v2, p0, Lfr/acetelecom/vc/MainActivity;->r:Lcom/tapjoy/TJActionRequest;

    iput-object v2, p0, Lfr/acetelecom/vc/MainActivity;->s:Lcom/tapjoy/TJPlacement;

    iput-object v2, p0, Lfr/acetelecom/vc/MainActivity;->u:Ljava/lang/String;

    iput-object v2, p0, Lfr/acetelecom/vc/MainActivity;->v:Ljava/lang/String;

    iput-object v2, p0, Lfr/acetelecom/vc/MainActivity;->w:Ljava/lang/String;

    iput-boolean v3, p0, Lfr/acetelecom/vc/MainActivity;->x:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/acetelecom/vc/MainActivity;->y:J

    iput-object v2, p0, Lfr/acetelecom/vc/MainActivity;->z:Landroid/widget/ImageButton;

    iput-object v2, p0, Lfr/acetelecom/vc/MainActivity;->A:Landroid/widget/ImageButton;

    iput-object v2, p0, Lfr/acetelecom/vc/MainActivity;->B:Landroid/widget/Switch;

    iput-object v2, p0, Lfr/acetelecom/vc/MainActivity;->C:Landroid/widget/Switch;

    iput-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iput-boolean v3, p0, Lfr/acetelecom/vc/MainActivity;->E:Z

    const-string v0, ""

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->G:Ljava/lang/String;

    iput-object v2, p0, Lfr/acetelecom/vc/MainActivity;->H:Lorg/json/JSONArray;

    iput-object v2, p0, Lfr/acetelecom/vc/MainActivity;->I:Lorg/json/JSONArray;

    iput-object v2, p0, Lfr/acetelecom/vc/MainActivity;->J:Ljava/util/ArrayList;

    iput-object v2, p0, Lfr/acetelecom/vc/MainActivity;->K:Ljava/util/HashMap;

    iput-boolean v3, p0, Lfr/acetelecom/vc/MainActivity;->L:Z

    iput-object v2, p0, Lfr/acetelecom/vc/MainActivity;->M:Landroid/content/Intent;

    iput-boolean v3, p0, Lfr/acetelecom/vc/MainActivity;->N:Z

    iput-object v2, p0, Lfr/acetelecom/vc/MainActivity;->O:Lfr/acetelecom/vc/c;

    const/16 v0, 0x40

    iput v0, p0, Lfr/acetelecom/vc/MainActivity;->d:I

    new-instance v0, Lfr/acetelecom/vc/MainActivity$2;

    invoke-direct {v0, p0}, Lfr/acetelecom/vc/MainActivity$2;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->S:Lfr/acetelecom/vc/c/d$c;

    new-instance v0, Lfr/acetelecom/vc/MainActivity$3;

    invoke-direct {v0, p0}, Lfr/acetelecom/vc/MainActivity$3;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->T:Lfr/acetelecom/vc/c/d$a;

    new-instance v0, Lfr/acetelecom/vc/MainActivity$4;

    invoke-direct {v0, p0}, Lfr/acetelecom/vc/MainActivity$4;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->U:Lfr/acetelecom/vc/c/d$e;

    new-instance v0, Lfr/acetelecom/vc/MainActivity$7;

    invoke-direct {v0, p0}, Lfr/acetelecom/vc/MainActivity$7;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->V:Lcom/fyber/requesters/RequestCallback;

    new-instance v0, Lfr/acetelecom/vc/MainActivity$8;

    invoke-direct {v0, p0}, Lfr/acetelecom/vc/MainActivity$8;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->W:Lcom/fyber/requesters/VirtualCurrencyCallback;

    iput v3, p0, Lfr/acetelecom/vc/MainActivity;->X:I

    new-instance v0, Lfr/acetelecom/vc/MainActivity$11;

    invoke-direct {v0, p0}, Lfr/acetelecom/vc/MainActivity$11;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->Y:Ljava/lang/Runnable;

    new-instance v0, Lfr/acetelecom/vc/MainActivity$13;

    invoke-direct {v0, p0}, Lfr/acetelecom/vc/MainActivity$13;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->Z:Ljava/lang/Runnable;

    new-instance v0, Lfr/acetelecom/vc/MainActivity$36;

    invoke-direct {v0, p0}, Lfr/acetelecom/vc/MainActivity$36;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->aa:Ljava/lang/Runnable;

    iput v3, p0, Lfr/acetelecom/vc/MainActivity;->f:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->G:Ljava/lang/String;

    sput-object p0, Lfr/acetelecom/vc/MainActivity;->R:Lfr/acetelecom/vc/MainActivity;

    return-void
.end method

.method private A()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07006e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070087

    new-instance v2, Lfr/acetelecom/vc/MainActivity$9;

    invoke-direct {v2, p0}, Lfr/acetelecom/vc/MainActivity$9;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic A(Lfr/acetelecom/vc/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->L()V

    return-void
.end method

.method static synthetic B(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/c/d$c;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->S:Lfr/acetelecom/vc/c/d$c;

    return-object v0
.end method

.method private B()V
    .locals 2

    const-string v0, "VC"

    const-string v1, "** Tapjoy Calling getCurrencyBalance !!"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tapjoy/Tapjoy;->getCurrencyBalance(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V

    return-void
.end method

.method static synthetic C(Lfr/acetelecom/vc/MainActivity;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->j:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private C()V
    .locals 2

    invoke-static {p0}, Lcom/tapjoy/Tapjoy;->setEarnedCurrencyListener(Lcom/tapjoy/TJEarnedCurrencyListener;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->s:Lcom/tapjoy/TJPlacement;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tapjoy/TJPlacement;

    const-string v1, "Offerwall"

    invoke-direct {v0, p0, v1, p0}, Lcom/tapjoy/TJPlacement;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)V

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->s:Lcom/tapjoy/TJPlacement;

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->s:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->requestContent()V

    return-void
.end method

.method static synthetic D(Lfr/acetelecom/vc/MainActivity;)Lcom/digits/sdk/android/g;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->g:Lcom/digits/sdk/android/g;

    return-object v0
.end method

.method private D()V
    .locals 3

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "sp"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->a:Lcom/fyber/requesters/OfferWallRequester;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->a:Lcom/fyber/requesters/OfferWallRequester;

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/requesters/OfferWallRequester;->request(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->M:Landroid/content/Intent;

    if-eqz v0, :cond_1

    const-string v0, "click_offerwall_credits"

    const-string v1, "fyber"

    invoke-direct {p0, v0, v1}, Lfr/acetelecom/vc/MainActivity;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->M:Landroid/content/Intent;

    const/16 v1, 0x4d2

    invoke-virtual {p0, v0, v1}, Lfr/acetelecom/vc/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method private E()V
    .locals 6

    const-wide/16 v2, 0x7d0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lfr/acetelecom/vc/MainActivity$12;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$12;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static synthetic E(Lfr/acetelecom/vc/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->Q()V

    return-void
.end method

.method private F()V
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->Z:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private G()V
    .locals 7

    const-string v0, "VC"

    const-string v1, "Loading creditList from cache ... "

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->J:Ljava/util/ArrayList;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->I:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->I:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->I:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "sku"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "price"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "tps"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "Name"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Descr"

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ref"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "val"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->J:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "VC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadCredits??"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance v0, Lfr/acetelecom/vc/p;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->J:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lfr/acetelecom/vc/p;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->k:Lfr/acetelecom/vc/p;

    goto :goto_0
.end method

.method private H()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->c(Z)V

    return-void
.end method

.method private I()Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/github/hiteshsondhi88/libffmpeg/e;->a(Landroid/content/Context;)Lcom/github/hiteshsondhi88/libffmpeg/e;

    move-result-object v1

    :try_start_0
    new-instance v2, Lfr/acetelecom/vc/MainActivity$14;

    invoke-direct {v2, p0}, Lfr/acetelecom/vc/MainActivity$14;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/github/hiteshsondhi88/libffmpeg/e;->a(Lcom/github/hiteshsondhi88/libffmpeg/h;)V
    :try_end_0
    .catch Lcom/github/hiteshsondhi88/libffmpeg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v1, "Error getInstance"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private J()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "videoshare9.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "video.jpg"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private K()V
    .locals 6

    const v5, 0x7f07009f

    const v4, 0x7f07009a

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "video.mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Share_Sound"

    invoke-direct {p0, v1}, Lfr/acetelecom/vc/MainActivity;->h(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->from(Landroid/app/Activity;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    move-result-object v1

    const-string v2, "video/mp4"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->setType(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lfr/acetelecom/vc/MainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->setSubject(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lfr/acetelecom/vc/MainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " https://fp287.app.goo.gl/KxJS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->setText(Ljava/lang/CharSequence;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lfr/acetelecom/vc/MainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->setChooserTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->addStream(Landroid/net/Uri;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lfr/acetelecom/vc/MainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<a href=\'https://fp287.app.goo.gl/KxJS\'>Show</a>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->setHtmlText(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->startChooser()V

    const-string v0, "sharevideo"

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->i(Ljava/lang/String;)V

    return-void
.end method

.method private L()V
    .locals 8

    const/4 v7, 0x1

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btCall uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v2, v2, Lfr/acetelecom/vc/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v2, v2, Lfr/acetelecom/vc/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",countryiso:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v2, v2, Lfr/acetelecom/vc/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mcc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v2, v2, Lfr/acetelecom/vc/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",credits:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v2, v2, Lfr/acetelecom/vc/b;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "myphone"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v1, v1, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    const-string v2, "[^0-9]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    iget-boolean v0, p0, Lfr/acetelecom/vc/MainActivity;->E:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v0, v0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-boolean v0, v0, Lfr/acetelecom/vc/b;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070084

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->w()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "0"

    iput-object v1, v0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "lastphone"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/acetelecom/vc/b;->e:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v0, v0, Lfr/acetelecom/vc/b;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v7, :cond_2

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070064

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v0, v0, Lfr/acetelecom/vc/b;->j:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->A()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lfr/acetelecom/vc/MainActivity;->q:I

    add-int/lit8 v1, v0, -0x8

    const v2, 0x3f8147ae    # 1.01f

    int-to-float v3, v1

    div-float v2, v3, v2

    const-string v3, "%.01f"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "VC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "progress:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -MIDDLE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",valuef: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",s:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v4, "progress"

    invoke-virtual {v2, v4, v0}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "seekvalue"

    invoke-virtual {v0, v2, v1}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "lastphone"

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v2, v2, Lfr/acetelecom/vc/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "myphone"

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v2, v2, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hidemyphonenumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-boolean v1, v1, Lfr/acetelecom/vc/b;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&myphonenumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v1, v1, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&phonenumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v1, v1, Lfr/acetelecom/vc/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&remainingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v1, v1, Lfr/acetelecom/vc/b;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&pitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&rec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v1, v1, Lfr/acetelecom/vc/b;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-boolean v7, p0, Lfr/acetelecom/vc/MainActivity;->E:Z

    const-string v1, "click_call"

    invoke-direct {p0, v1}, Lfr/acetelecom/vc/MainActivity;->h(Ljava/lang/String;)V

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->O:Lfr/acetelecom/vc/c;

    const-string v2, "pcall"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lfr/acetelecom/vc/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "VC"

    const-string v1, "??bCalled??==true"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private M()V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3e2

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->c(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v0, v0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v0, v0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v0, v0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "nosim"

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->o()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->R()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->w()V

    goto :goto_0

    :cond_3
    :try_start_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lfr/acetelecom/vc/MainActivity;->i:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->i:Landroid/widget/PopupWindow;

    new-instance v2, Lfr/acetelecom/vc/MainActivity$17;

    invoke-direct {v2, p0}, Lfr/acetelecom/vc/MainActivity$17;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->i:Landroid/widget/PopupWindow;

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private N()V
    .locals 5

    :try_start_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lfr/acetelecom/vc/MainActivity;->j:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->j:Landroid/widget/PopupWindow;

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->b(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private O()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "chkofferwall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lfr/acetelecom/vc/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "fr.acetelecom.vc.MESSAGEURL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/win/?lang="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->G:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v4, "credits"

    invoke-virtual {v3, v4, v6}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v4, "uid"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&spOfferwall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lfr/acetelecom/vc/MainActivity;->N:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&optin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v4, "optin"

    invoke-virtual {v3, v4, v6}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&mcc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v4, "mcc"

    const-string v5, "?"

    invoke-virtual {v3, v4, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x162e

    invoke-virtual {p0, v0, v1}, Lfr/acetelecom/vc/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private P()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "tpsCall"

    invoke-virtual {v0, v1, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "******************** chkVc tpsCall : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "tpsCall"

    invoke-virtual {v0, v1, v5}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->O:Lfr/acetelecom/vc/c;

    const-string v1, "chk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v4, "session"

    invoke-virtual {v3, v4, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&rec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v4, "rec"

    invoke-virtual {v3, v4, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private Q()V
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->aa:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private R()V
    .locals 7

    const-wide/16 v2, 0x7d0

    invoke-static {}, La/a/a/a/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    const-string v1, "UlUSzLHIe4Zh2EkUQOxU7i3sA"

    const-string v4, "7efQoylidmIW3w9l8p2qUFtDZEQyIvmuj2mT3rxHzE4XE42CUM"

    invoke-direct {v0, v1, v4}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/digits/sdk/android/ac$a;

    invoke-direct {v1}, Lcom/digits/sdk/android/ac$a;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [La/a/a/a/i;

    const/4 v5, 0x0

    new-instance v6, Lcom/twitter/sdk/android/core/o;

    invoke-direct {v6, v0}, Lcom/twitter/sdk/android/core/o;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V

    aput-object v6, v4, v5

    const/4 v0, 0x1

    invoke-virtual {v1}, Lcom/digits/sdk/android/ac$a;->a()Lcom/digits/sdk/android/ac;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {p0, v4}, La/a/a/a/c;->a(Landroid/content/Context;[La/a/a/a/i;)La/a/a/a/c;

    :cond_0
    invoke-static {}, Lcom/digits/sdk/android/ac;->b()Lcom/digits/sdk/android/aw;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->h:Lcom/digits/sdk/android/aw;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->h:Lcom/digits/sdk/android/aw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->h:Lcom/digits/sdk/android/aw;

    invoke-virtual {v0}, Lcom/digits/sdk/android/aw;->e()J

    move-result-wide v0

    const-string v2, "VC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ digitSession OOOOOOOOOOOOOK @@@@@@@@@@@@@@@@@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lfr/acetelecom/vc/MainActivity$37;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$37;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private S()V
    .locals 0

    return-void
.end method

.method static synthetic a(Lfr/acetelecom/vc/MainActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/MainActivity;->M:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic a(Lfr/acetelecom/vc/MainActivity;Lcom/digits/sdk/android/aw;)Lcom/digits/sdk/android/aw;
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/MainActivity;->h:Lcom/digits/sdk/android/aw;

    return-object p1
.end method

.method static synthetic a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    return-object v0
.end method

.method static synthetic a(Lfr/acetelecom/vc/MainActivity;Lfr/acetelecom/vc/n;)Lfr/acetelecom/vc/n;
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/MainActivity;->P:Lfr/acetelecom/vc/n;

    return-object p1
.end method

.method static synthetic a(Lfr/acetelecom/vc/MainActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/MainActivity;->K:Ljava/util/HashMap;

    return-object p1
.end method

.method private a(ILandroid/content/Intent;)V
    .locals 7

    const v6, 0x7f07009e

    const/16 v3, 0x23

    const/4 v5, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-string v0, "fr.acetelecom.vc.WIN"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#sponsor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->R()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "sponsorUrl"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->O:Lfr/acetelecom/vc/c;

    const-string v1, "getSponsorUrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v3, v3, Lfr/acetelecom/vc/b;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "#videovc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Share_Call"

    invoke-direct {p0, v1}, Lfr/acetelecom/vc/MainActivity;->h(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.SUBJECT"

    const v3, 0x7f07009a

    invoke-virtual {p0, v3}, Lfr/acetelecom/vc/MainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " http://m.allogag.com/voice-changer-video?v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v6}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " http://www.allogag.com/voice-changer/application"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.HTML_TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<a href=\'http://m.allogag.com/voice-changer-video?v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'>Voir la vid\u00e9o</a> <br>\n<br>\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v6}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " http://www.allogag.com/voice-changer/application"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f070073

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "#emailoptin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "optin"

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->O:Lfr/acetelecom/vc/c;

    const-string v1, "chk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v4, "session"

    invoke-virtual {v3, v4, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&rec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v4, "rec"

    invoke-virtual {v3, v4, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OuvrePageGratuit"

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "#digits"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->R()V

    goto/16 :goto_0

    :cond_6
    const-string v1, "#fyber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->D()V

    goto/16 :goto_0

    :cond_7
    const-string v1, "#buy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->N()V

    goto/16 :goto_0

    :cond_8
    const-string v1, "#sondage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "#share"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070075

    invoke-virtual {p0, v3}, Lfr/acetelecom/vc/MainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " http://www.allogag.com/voice-changer/application"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f070066

    invoke-virtual {p0, v1}, Lfr/acetelecom/vc/MainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "#tapjoy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "click_offerwall_credits"

    const-string v1, "tapjoy"

    invoke-direct {p0, v0, v1}, Lfr/acetelecom/vc/MainActivity;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "tapjoy"

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->C()V

    goto/16 :goto_0

    :cond_a
    const-string v1, "#supersonic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "click_offerwall_credits"

    const-string v1, "sponsorpay"

    invoke-direct {p0, v0, v1}, Lfr/acetelecom/vc/MainActivity;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "sp"

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    :cond_b
    const-string v1, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResultWinFreeMin : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(ILorg/json/JSONObject;)V
    .locals 3

    const v1, 0x7f07002b

    const-string v0, "?"

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, v1}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->f(Ljava/lang/String;)V

    return-void

    :sswitch_0
    const v0, 0x7f070063

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const v0, 0x7f070084

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->w()V

    goto :goto_0

    :sswitch_2
    const v0, 0x7f070029

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    const v0, 0x7f07008c

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    const v0, 0x7f070071

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    if-eqz p2, :cond_0

    :try_start_0
    const-string v1, "msg"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v1, 0x7f07002b

    invoke-virtual {p0, v1}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "VC"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2c -> :sswitch_5
        -0x11 -> :sswitch_4
        -0x10 -> :sswitch_4
        -0xf -> :sswitch_4
        -0xb -> :sswitch_4
        -0xa -> :sswitch_4
        -0x6 -> :sswitch_3
        -0x5 -> :sswitch_2
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_0
        0x3e7 -> :sswitch_4
    .end sparse-switch
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f0e013d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->C:Landroid/widget/Switch;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "canrec"

    invoke-virtual {v0, v1, v3}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "rec"

    invoke-virtual {v0, v1, v3}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->C:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->C:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->C:Landroid/widget/Switch;

    new-instance v1, Lfr/acetelecom/vc/MainActivity$18;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$18;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_1
    const v0, 0x7f0e013c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->B:Landroid/widget/Switch;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->B:Landroid/widget/Switch;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "hideMyPhoneNumber"

    invoke-virtual {v1, v2, v3}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->B:Landroid/widget/Switch;

    new-instance v1, Lfr/acetelecom/vc/MainActivity$19;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$19;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0e0130

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "credits"

    invoke-virtual {v1, v2, v3}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lfr/acetelecom/vc/b;->j:I

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v0, v0, Lfr/acetelecom/vc/b;->j:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v0, v0, Lfr/acetelecom/vc/b;->j:I

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->d(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!!!!!!!!! traite_popup_numtocall setText : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0e0138

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lfr/acetelecom/vc/MainActivity$21;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$21;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lfr/acetelecom/vc/MainActivity$22;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$22;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e00c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lfr/acetelecom/vc/MainActivity$23;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$23;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e00c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lfr/acetelecom/vc/MainActivity$24;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$24;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lfr/acetelecom/vc/MainActivity$25;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$25;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e012f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lfr/acetelecom/vc/MainActivity$26;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$26;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->F:Landroid/widget/EditText;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "lastphone"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/acetelecom/vc/b;->e:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->F:Landroid/widget/EditText;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v1, v1, Lfr/acetelecom/vc/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lfr/acetelecom/vc/MainActivity$27;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$27;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e00c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->A:Landroid/widget/ImageButton;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->A:Landroid/widget/ImageButton;

    new-instance v1, Lfr/acetelecom/vc/MainActivity$28;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$28;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->C:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->C:Landroid/widget/Switch;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "rec"

    invoke-virtual {v0, v1, v3}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    goto/16 :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f07006a

    invoke-virtual {p0, v1}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method static synthetic a(Lfr/acetelecom/vc/MainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lfr/acetelecom/vc/MainActivity;->e(I)V

    return-void
.end method

.method static synthetic a(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lfr/acetelecom/vc/MainActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lfr/acetelecom/vc/MainActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lfr/acetelecom/vc/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lfr/acetelecom/vc/MainActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lfr/acetelecom/vc/MainActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lfr/acetelecom/vc/MainActivity;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOfferWall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "credits"

    invoke-virtual {v1, v2, v4}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lfr/acetelecom/vc/b;->j:I

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v1, v0, Lfr/acetelecom/vc/b;->j:I

    add-int/2addr v1, p2

    iput v1, v0, Lfr/acetelecom/vc/b;->j:I

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "credits"

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v2, v2, Lfr/acetelecom/vc/b;->j:I

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->O:Lfr/acetelecom/vc/c;

    const-string v1, "wll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offerwall_credits_ok"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lfr/acetelecom/vc/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lfr/acetelecom/vc/MainActivity;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->H()V

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07002d

    invoke-virtual {p0, v1}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    int-to-float v3, p2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "credit"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->E()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "ref"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Name"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Descr"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/github/hiteshsondhi88/libffmpeg/e;->a(Landroid/content/Context;)Lcom/github/hiteshsondhi88/libffmpeg/e;

    move-result-object v0

    :try_start_0
    new-instance v1, Lfr/acetelecom/vc/MainActivity$15;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$15;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/github/hiteshsondhi88/libffmpeg/e;->a([Ljava/lang/String;Lcom/github/hiteshsondhi88/libffmpeg/g;)V
    :try_end_0
    .catch Lcom/github/hiteshsondhi88/libffmpeg/a/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->n:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    const-string v0, "Error execute"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lfr/acetelecom/vc/MainActivity;Lfr/acetelecom/vc/c/h;)Z
    .locals 1

    invoke-direct {p0, p1}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/c/h;)Z

    move-result v0

    return v0
.end method

.method private a(Lfr/acetelecom/vc/c/h;)Z
    .locals 4

    invoke-virtual {p1}, Lfr/acetelecom/vc/c/h;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v1, v1, Lfr/acetelecom/vc/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v1, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!verifyDeveloperPayload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "nov"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lfr/acetelecom/vc/MainActivity;I)I
    .locals 0

    iput p1, p0, Lfr/acetelecom/vc/MainActivity;->X:I

    return p1
.end method

.method private b(Landroid/view/View;)V
    .locals 5

    const v4, 0x7f0e0136

    const v0, 0x7f0e0135

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->k:Lfr/acetelecom/vc/p;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->k:Lfr/acetelecom/vc/p;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lfr/acetelecom/vc/MainActivity$29;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$29;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0e0130

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "credits"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lfr/acetelecom/vc/b;->j:I

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v0, v0, Lfr/acetelecom/vc/b;->j:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v0, v0, Lfr/acetelecom/vc/b;->j:I

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->d(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!!!!!!!!! traite_popup_credits setText : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0e0132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lfr/acetelecom/vc/MainActivity$30;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$30;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e012f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lfr/acetelecom/vc/MainActivity$32;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$32;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lfr/acetelecom/vc/MainActivity$33;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$33;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e00c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lfr/acetelecom/vc/MainActivity$34;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$34;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lfr/acetelecom/vc/MainActivity$35;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$35;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "OuvrePageCredits"

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->i(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const/high16 v1, 0x7f080000

    const v2, 0x7f03003c

    invoke-static {p0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f07006a

    invoke-virtual {p0, v1}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic b(Lfr/acetelecom/vc/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->P()V

    return-void
.end method

.method static synthetic b(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lfr/acetelecom/vc/MainActivity;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lfr/acetelecom/vc/MainActivity;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lfr/acetelecom/vc/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/16 v7, 0x12c

    const/16 v6, 0x3c

    const/16 v5, 0xe10

    const/16 v4, 0x258

    const/4 v3, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    const-string v0, "info"

    invoke-static {v0, p1, p2, p3}, Lcom/tapjoy/Tapjoy;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"

    const-string v2, "tpsCall"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v3, :cond_1

    const-string v0, "G0"

    :cond_0
    :goto_0
    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/tapjoy/Tapjoy;->setUserCohortVariable(ILjava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    if-gt v1, v6, :cond_2

    const-string v0, "G1"

    goto :goto_0

    :cond_2
    if-gt v1, v7, :cond_3

    const-string v0, "G2"

    goto :goto_0

    :cond_3
    if-gt v1, v4, :cond_4

    const-string v0, "G3"

    goto :goto_0

    :cond_4
    if-gt v1, v5, :cond_5

    const-string v0, "G4"

    goto :goto_0

    :cond_5
    if-le v1, v5, :cond_0

    const-string v0, "G5"

    goto :goto_0

    :cond_6
    const-string v2, "credits_left"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v3, :cond_8

    const-string v0, "G0"

    :cond_7
    :goto_2
    invoke-static {v3, v0}, Lcom/tapjoy/Tapjoy;->setUserCohortVariable(ILjava/lang/String;)V

    goto :goto_1

    :cond_8
    if-gt v1, v6, :cond_9

    const-string v0, "G1"

    goto :goto_2

    :cond_9
    if-gt v1, v7, :cond_a

    const-string v0, "G2"

    goto :goto_2

    :cond_a
    if-gt v1, v4, :cond_b

    const-string v0, "G3"

    goto :goto_2

    :cond_b
    if-gt v1, v5, :cond_c

    const-string v0, "G4"

    goto :goto_2

    :cond_c
    if-le v1, v5, :cond_7

    const-string v0, "G5"

    goto :goto_2

    :cond_d
    const-string v2, "call_pending"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v0, 0x2

    :goto_3
    invoke-static {v0, p2}, Lcom/tapjoy/Tapjoy;->setUserCohortVariable(ILjava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->e:Lcom/google/firebase/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    const-string v2, "registered_user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v0, 0x3

    goto :goto_3

    :cond_f
    const-string v2, "offerwall_credits_ok"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v1, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v3, :cond_11

    const-string v0, "G0"

    :cond_10
    :goto_4
    invoke-static {v1, v0}, Lcom/tapjoy/Tapjoy;->setUserCohortVariable(ILjava/lang/String;)V

    goto :goto_1

    :cond_11
    if-gt v2, v6, :cond_12

    const-string v0, "G1"

    goto :goto_4

    :cond_12
    const/16 v3, 0x78

    if-gt v2, v3, :cond_13

    const-string v0, "G2"

    goto :goto_4

    :cond_13
    if-gt v2, v7, :cond_14

    const-string v0, "G3"

    goto :goto_4

    :cond_14
    if-gt v2, v4, :cond_15

    const-string v0, "G4"

    goto :goto_4

    :cond_15
    if-le v2, v4, :cond_10

    const-string v0, "G5"

    goto :goto_4

    :cond_16
    move v0, v1

    goto :goto_3
.end method

.method private b(Z)V
    .locals 4

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v0, 0x7f0e0111

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0e0112

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method

.method static synthetic c(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/c;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->O:Lfr/acetelecom/vc/c;

    return-object v0
.end method

.method private c(Landroid/content/Intent;)V
    .locals 6

    const/4 v2, 0x0

    const-string v0, ""

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "data1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "display_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "VC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "************ contactName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v4, "lastcontactname"

    invoke-virtual {v3, v4, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->F:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->F:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v3, "lastphone"

    invoke-virtual {v2, v3, v1}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v3, "lastcontactname"

    invoke-virtual {v2, v3, v1}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic c(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lfr/acetelecom/vc/MainActivity;->d(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "id"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastpath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RouteIntent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "app1.allogag.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "app2.allogag.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string v2, "VC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RouteIntent appx::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RouteIntent:dl::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->O:Lfr/acetelecom/vc/c;

    const-string v2, "sponsorChild"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?parent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lfr/acetelecom/vc/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v3, "allogag.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v0, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RouteIntent::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "voice-changer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RouteIntent:::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "v"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RouteIntent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "o"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "fyber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->M:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v0, "click_offerwall_credits"

    const-string v1, "fyber"

    invoke-direct {p0, v0, v1}, Lfr/acetelecom/vc/MainActivity;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "sp"

    invoke-virtual {v0, v1, v7}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->M:Landroid/content/Intent;

    const/16 v1, 0x4d2

    invoke-virtual {p0, v0, v1}, Lfr/acetelecom/vc/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "kazoo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lfr/acetelecom/vc/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://kazoolink.com/publisherapp?key=2318&tutorial=true&userid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v3, "uid"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fr.acetelecom.vc.MESSAGEURL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "tapjoy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "tapjoy"

    invoke-virtual {v0, v1, v7}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->C()V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->O()V

    goto/16 :goto_0

    :cond_9
    const-string v0, "d"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "info"

    const-string v1, ""

    invoke-static {v0, p1, p2, v1}, Lcom/tapjoy/Tapjoy;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->e:Lcom/google/firebase/a/a;

    invoke-virtual {v1, p1, v0}, Lcom/google/firebase/a/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private c(Z)V
    .locals 4

    if-eqz p1, :cond_2

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "credits"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lfr/acetelecom/vc/b;->j:I

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v0, v0, Lfr/acetelecom/vc/b;->j:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v0, v0, Lfr/acetelecom/vc/b;->j:I

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->d(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f07006a

    invoke-virtual {p0, v1}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "credits_left"

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v1, v1, Lfr/acetelecom/vc/b;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lfr/acetelecom/vc/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->M()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->j:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->N()V

    goto :goto_1
.end method

.method private static d(I)Ljava/lang/String;
    .locals 4

    int-to-double v0, p0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v1, v0, 0x3c

    sub-int v1, p0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " min "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic d(Lfr/acetelecom/vc/MainActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1

    invoke-direct {p0, p1}, Lfr/acetelecom/vc/MainActivity;->g(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "****  Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->f(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "VC"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfr/acetelecom/vc/MainActivity;->a(ILorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic e(Lfr/acetelecom/vc/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->z()V

    return-void
.end method

.method static synthetic e(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lfr/acetelecom/vc/MainActivity;->h(Ljava/lang/String;)V

    return-void
.end method

.method private f(I)V
    .locals 8

    const/16 v7, 0x3df

    const v6, 0x7f070070

    const/4 v5, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Displaying  permission rationale to provide additional context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->p:Landroid/view/View;

    const v1, 0x7f070097

    invoke-static {v0, v1, v5}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    new-instance v1, Lfr/acetelecom/vc/MainActivity$38;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$38;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v6, v1}, Landroid/support/design/widget/Snackbar;->a(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v3

    invoke-static {p0, v0, v7}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v3

    invoke-static {p0, v0, v7}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    const-string v0, "android.permission.READ_SMS"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->p:Landroid/view/View;

    const v1, 0x7f070098

    invoke-static {v0, v1, v5}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    new-instance v1, Lfr/acetelecom/vc/MainActivity$39;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$39;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v6, v1}, Landroid/support/design/widget/Snackbar;->a(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.READ_SMS"

    aput-object v1, v0, v3

    const/16 v1, 0x3e0

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.READ_SMS"

    aput-object v1, v0, v3

    const/16 v1, 0x3e0

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->p:Landroid/view/View;

    const v1, 0x7f070099

    invoke-static {v0, v1, v5}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    new-instance v1, Lfr/acetelecom/vc/MainActivity$40;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$40;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v6, v1}, Landroid/support/design/widget/Snackbar;->a(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    sget-object v0, Lfr/acetelecom/vc/MainActivity;->ad:[Ljava/lang/String;

    const/16 v1, 0x3e2

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lfr/acetelecom/vc/MainActivity;->ad:[Ljava/lang/String;

    const/16 v1, 0x3e2

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3df
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic f(Lfr/acetelecom/vc/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->O()V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private g(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "ref"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private g(I)V
    .locals 3

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " permission has NOT been granted. Requesting permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lfr/acetelecom/vc/MainActivity;->ab:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lfr/acetelecom/vc/MainActivity;->ab:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VC"

    const-string v1, "Displaying  permission rationale to provide additional context."

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lfr/acetelecom/vc/MainActivity;->ac:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->p:Landroid/view/View;

    const/4 v2, -0x2

    invoke-static {v1, v0, v2}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const v1, 0x7f070070

    new-instance v2, Lfr/acetelecom/vc/MainActivity$41;

    invoke-direct {v2, p0, p1}, Lfr/acetelecom/vc/MainActivity$41;-><init>(Lfr/acetelecom/vc/MainActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->a(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lfr/acetelecom/vc/MainActivity;->ab:[Ljava/lang/String;

    aget-object v2, v2, p1

    aput-object v2, v0, v1

    invoke-static {p0, v0, p1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic g(Lfr/acetelecom/vc/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->N()V

    return-void
.end method

.method static synthetic h(Lfr/acetelecom/vc/MainActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lfr/acetelecom/vc/MainActivity;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lfr/acetelecom/vc/MainActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->G:Ljava/lang/String;

    return-object v0
.end method

.method private i(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/tapjoy/TJPlacement;

    invoke-direct {v0, p0, p1, p0}, Lcom/tapjoy/TJPlacement;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->requestContent()V

    :cond_0
    return-void
.end method

.method private j(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "ref"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->K:Ljava/util/HashMap;

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method static synthetic j(Lfr/acetelecom/vc/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->u()V

    return-void
.end method

.method static synthetic k(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/n;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->P:Lfr/acetelecom/vc/n;

    return-object v0
.end method

.method private k(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/firebase/crash/FirebaseCrash;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070070

    invoke-virtual {p0, v2}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfr/acetelecom/vc/MainActivity$16;

    invoke-direct {v3, p0}, Lfr/acetelecom/vc/MainActivity$16;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic k()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lfr/acetelecom/vc/MainActivity;->ad:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/c/d;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->t:Lfr/acetelecom/vc/c/d;

    return-object v0
.end method

.method static synthetic l()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lfr/acetelecom/vc/MainActivity;->ab:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lfr/acetelecom/vc/MainActivity;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->r()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, -0x2

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ************************ Email : ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v3, "email"

    const-string v4, "?"

    invoke-virtual {v2, v3, v4}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")*****************************"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0e00c8

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->z:Landroid/widget/ImageButton;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->z:Landroid/widget/ImageButton;

    new-instance v1, Lfr/acetelecom/vc/MainActivity$10;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$10;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e00c7

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->m:Landroid/widget/Button;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->m:Landroid/widget/Button;

    new-instance v1, Lfr/acetelecom/vc/MainActivity$20;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$20;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e00c9

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->l:Landroid/widget/Button;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->l:Landroid/widget/Button;

    new-instance v1, Lfr/acetelecom/vc/MainActivity$31;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$31;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->I()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->o:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->o:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->n:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->n:Landroid/app/ProgressDialog;

    const v1, 0x7f070081

    invoke-virtual {p0, v1}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->n:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->n:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->n:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->n:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->n:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "ambpos"

    invoke-virtual {v0, v1, v6}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "amb"

    invoke-virtual {v0, v1, v6}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    new-instance v0, Lfr/acetelecom/vc/MainActivity$42;

    invoke-direct {v0, p0}, Lfr/acetelecom/vc/MainActivity$42;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->g:Lcom/digits/sdk/android/g;

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->u()V

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->v()V

    invoke-static {}, Lcom/digits/sdk/android/ac;->b()Lcom/digits/sdk/android/aw;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->h:Lcom/digits/sdk/android/aw;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "userId"

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v3, v3, Lfr/acetelecom/vc/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/acetelecom/vc/b;->g:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->h:Lcom/digits/sdk/android/aw;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->h:Lcom/digits/sdk/android/aw;

    invoke-virtual {v0}, Lcom/digits/sdk/android/aw;->d()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "authToken.token"

    iget-object v3, v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "authToken.secret"

    iget-object v0, v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "authToken.id"

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->h:Lcom/digits/sdk/android/aw;

    invoke-virtual {v2}, Lcom/digits/sdk/android/aw;->e()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->h:Lcom/digits/sdk/android/aw;

    invoke-virtual {v1}, Lcom/digits/sdk/android/aw;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "myphone"

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v2, v2, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "userId"

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v2, v2, Lfr/acetelecom/vc/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " digitSession ok ************************ userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v2, v2, Lfr/acetelecom/vc/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*****************************"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->h:Lcom/digits/sdk/android/aw;

    invoke-virtual {v2}, Lcom/digits/sdk/android/aw;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "registered_user"

    const-string v1, "true"

    invoke-direct {p0, v0, v1}, Lfr/acetelecom/vc/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const v0, 0x7f0e0130

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->c:Landroid/widget/TextView;

    return-void

    :cond_3
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "myphone"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "userId"

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v2, v2, Lfr/acetelecom/vc/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " digitSession nok ************************ userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v2, v2, Lfr/acetelecom/vc/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*****************************"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "registered_user"

    const-string v1, "false"

    invoke-direct {p0, v0, v1}, Lfr/acetelecom/vc/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v0, v0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v0, v0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    :cond_4
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v0, v0, Lfr/acetelecom/vc/b;->c:Ljava/lang/String;

    const-string v1, "208"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "33"

    iput-object v1, v0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    :cond_5
    :goto_1
    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->R()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v0, v0, Lfr/acetelecom/vc/b;->c:Ljava/lang/String;

    const-string v1, "222"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "39"

    iput-object v1, v0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v0, v0, Lfr/acetelecom/vc/b;->c:Ljava/lang/String;

    const-string v1, "206"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "32"

    iput-object v1, v0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v0, v0, Lfr/acetelecom/vc/b;->c:Ljava/lang/String;

    const-string v1, "204"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "31"

    iput-object v1, v0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v0, v0, Lfr/acetelecom/vc/b;->c:Ljava/lang/String;

    const-string v1, "724"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "55"

    iput-object v1, v0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic n(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/c/d$e;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->U:Lfr/acetelecom/vc/c/d$e;

    return-object v0
.end method

.method private n()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "https://app2.allogag.com"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://app1.allogag.com"

    goto :goto_0
.end method

.method static synthetic o(Lfr/acetelecom/vc/MainActivity;)Lcom/tapjoy/TJActionRequest;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->r:Lcom/tapjoy/TJActionRequest;

    return-object v0
.end method

.method private o()Z
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->h:Lcom/digits/sdk/android/aw;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic p(Lfr/acetelecom/vc/MainActivity;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->K:Ljava/util/HashMap;

    return-object v0
.end method

.method private p()V
    .locals 4

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "chkofferwall"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->O:Lfr/acetelecom/vc/c;

    const-string v1, "offerwall2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?t=all&c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v3, v3, Lfr/acetelecom/vc/b;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic q(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/c/d$a;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->T:Lfr/acetelecom/vc/c/d$a;

    return-object v0
.end method

.method private q()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    move v1, v2

    :cond_1
    const-string v4, "VC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "muted : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "audio.isSpeakerphoneOn() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "volume_level : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const v0, 0x7f070077

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    return v1
.end method

.method static synthetic r(Lfr/acetelecom/vc/MainActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->J:Ljava/util/ArrayList;

    return-object v0
.end method

.method private r()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "ref"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method static synthetic s(Lfr/acetelecom/vc/MainActivity;)I
    .locals 1

    iget v0, p0, Lfr/acetelecom/vc/MainActivity;->X:I

    return v0
.end method

.method private s()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "BuyProd"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->g(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->K:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "credits"

    invoke-virtual {v1, v2, v3}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lfr/acetelecom/vc/b;->j:I

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "credits"

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v2, v2, Lfr/acetelecom/vc/b;->j:I

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->H()V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->t:Lfr/acetelecom/vc/c/d;

    if-nez v0, :cond_2

    const-string v0, "VC"

    const-string v1, "Creating IAB helper."

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lfr/acetelecom/vc/c/d;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->v:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lfr/acetelecom/vc/c/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->t:Lfr/acetelecom/vc/c/d;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->t:Lfr/acetelecom/vc/c/d;

    if-nez v0, :cond_1

    const-string v0, "VC"

    const-string v1, "Cannot create mHelper."

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->t:Lfr/acetelecom/vc/c/d;

    invoke-virtual {v0, v3}, Lfr/acetelecom/vc/c/d;->a(Z)V

    const-string v0, "VC"

    const-string v1, "Starting setup IAB helper"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->t:Lfr/acetelecom/vc/c/d;

    new-instance v1, Lfr/acetelecom/vc/MainActivity$50;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$50;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v1}, Lfr/acetelecom/vc/c/d;->a(Lfr/acetelecom/vc/c/d$d;)V

    :cond_2
    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->t()V

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->p()V

    goto :goto_0
.end method

.method private t()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "urls"

    invoke-virtual {v0, v1, v4}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "urls"

    invoke-virtual {v1, v2, v4}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "lasturls"

    invoke-virtual {v1, v2, v4}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "lasturls"

    invoke-virtual {v1, v2, v0}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** init2 ***same urls:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "lasturls"

    invoke-virtual {v0, v1, v4}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic t(Lfr/acetelecom/vc/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->F()V

    return-void
.end method

.method private u()V
    .locals 2

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->h()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->j()V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x3e1

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->b(I)V

    goto :goto_0
.end method

.method static synthetic u(Lfr/acetelecom/vc/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->R()V

    return-void
.end method

.method static synthetic v(Lfr/acetelecom/vc/MainActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->n:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private v()V
    .locals 1

    const/16 v0, 0x3e0

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->c(I)V

    return-void
.end method

.method private w()V
    .locals 7

    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f030038

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f070068

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setTitle(I)V

    const v0, 0x7f0e00fa

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0e00fb

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0e00f9

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    if-nez v2, :cond_0

    const-string v0, "VC"

    const-string v1, "??numberEd == null ??"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v4, v4, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v4, v4, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_1

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v4, v4, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v5, "myphone"

    iget-object v6, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v6, v6, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v5, "canchangenum"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    :goto_1
    new-instance v4, Lfr/acetelecom/vc/MainActivity$5;

    invoke-direct {v4, p0, v2, v3}, Lfr/acetelecom/vc/MainActivity$5;-><init>(Lfr/acetelecom/vc/MainActivity;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lfr/acetelecom/vc/MainActivity$6;

    invoke-direct {v0, p0, v3}, Lfr/acetelecom/vc/MainActivity$6;-><init>(Lfr/acetelecom/vc/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_1
    const-string v4, "VC"

    const-string v5, "??cannot get phone  ??"

    invoke-static {v4, v5}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_1
.end method

.method static synthetic w(Lfr/acetelecom/vc/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->K()V

    return-void
.end method

.method static synthetic x(Lfr/acetelecom/vc/MainActivity;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->i:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private x()V
    .locals 5

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v0, v0, Lfr/acetelecom/vc/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v0, v0, Lfr/acetelecom/vc/b;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v1, v1, Lfr/acetelecom/vc/b;->b:Ljava/lang/String;

    iput-object v1, v0, Lfr/acetelecom/vc/b;->c:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "mcc"

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v2, v2, Lfr/acetelecom/vc/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v1, v1, Lfr/acetelecom/vc/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&droid=1&icc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v1, v1, Lfr/acetelecom/vc/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->O:Lfr/acetelecom/vc/c;

    const-string v2, "pcList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lfr/acetelecom/vc/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic y(Lfr/acetelecom/vc/MainActivity;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->B:Landroid/widget/Switch;

    return-object v0
.end method

.method private y()V
    .locals 4

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "pcListJsonStr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pc_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "pc_en.json"

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "version"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "ambiances"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lfr/acetelecom/vc/MainActivity;->H:Lorg/json/JSONArray;

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v3, "pcListJsonStr"

    invoke-virtual {v2, v3, v1}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "pcListJsonVer"

    invoke-virtual {v1, v2, v0}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "VC"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lfr/acetelecom/vc/MainActivity;->H:Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "VC"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic z(Lfr/acetelecom/vc/MainActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->F:Landroid/widget/EditText;

    return-object v0
.end method

.method private z()V
    .locals 1

    iget-boolean v0, p0, Lfr/acetelecom/vc/MainActivity;->L:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/acetelecom/vc/MainActivity;->L:Z

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v0, v0, Lfr/acetelecom/vc/b;->j:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->M()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->A()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->M()V

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iput p1, p0, Lfr/acetelecom/vc/MainActivity;->q:I

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iput p1, v0, Lfr/acetelecom/vc/b;->k:I

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "seekvalue"

    invoke-virtual {v0, v1, p1}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set seekvalue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(IZI)V
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iput p1, v0, Lfr/acetelecom/vc/b;->n:I

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "amb"

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v2, v2, Lfr/acetelecom/vc/b;->n:I

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "ambpos"

    invoke-virtual {v0, v1, p3}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->J()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "video.mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "-y"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "-i"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v0, 0x3

    const-string v4, "-i"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, "-pix_fmt"

    aput-object v1, v3, v0

    const/4 v0, 0x6

    const-string v1, "yuv420p"

    aput-object v1, v3, v0

    const/4 v0, 0x7

    const-string v1, "-acodec"

    aput-object v1, v3, v0

    const/16 v0, 0x8

    const-string v1, "aac"

    aput-object v1, v3, v0

    const/16 v0, 0x9

    aput-object v2, v3, v0

    invoke-direct {p0, v3}, Lfr/acetelecom/vc/MainActivity;->a([Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lfr/acetelecom/vc/e;)V
    .locals 6

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->J()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "video.mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "-y"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "-i"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v0, 0x3

    const-string v4, "-i"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, "-pix_fmt"

    aput-object v1, v3, v0

    const/4 v0, 0x6

    const-string v1, "yuv420p"

    aput-object v1, v3, v0

    const/4 v0, 0x7

    const-string v1, "-acodec"

    aput-object v1, v3, v0

    const/16 v0, 0x8

    const-string v1, "aac"

    aput-object v1, v3, v0

    const/16 v0, 0x9

    aput-object v2, v3, v0

    invoke-direct {p0, v3}, Lfr/acetelecom/vc/MainActivity;->a([Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBackEndResult !!!!!!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",mcc:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v4, "mcc"

    const-string v5, "?"

    invoke-virtual {v3, v4, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",uid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v4, "uid"

    const-string v5, "?"

    invoke-virtual {v3, v4, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->z:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    if-nez p2, :cond_1

    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->f(Ljava/lang/String;)V

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "????????onBackEndResult action : response == null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "????????onBackEndResult action : response == null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPostExecute action : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pcList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "ambiances"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lfr/acetelecom/vc/MainActivity;->H:Lorg/json/JSONArray;

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v3, "pcListJsonStr"

    invoke-virtual {v2, v3, v0}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "pcListJsonVer"

    invoke-virtual {v0, v2, v1}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "??"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "Error connection !"

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->f(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error connection ! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->finish()V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lfr/acetelecom/vc/MainActivity;->E:Z

    if-nez v1, :cond_1c

    new-instance v1, Lfr/acetelecom/vc/m;

    const/4 v3, 0x0

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    invoke-direct {v1, v3, v4}, Lfr/acetelecom/vc/m;-><init>(Ljava/lang/String;Lfr/acetelecom/vc/b;)V

    invoke-virtual {v1, v0}, Lfr/acetelecom/vc/m;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsyncOperation:onPostExecute:??decode:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "init"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "nas"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/acetelecom/vc/b;->f:Ljava/lang/String;

    const-string v0, "c"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "geocc"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "creditsList"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lfr/acetelecom/vc/MainActivity;->I:Lorg/json/JSONArray;

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->G()V

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v5, "mcc"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lfr/acetelecom/vc/b;->c:Ljava/lang/String;

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v5, "mcc"

    iget-object v6, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v6, v6, Lfr/acetelecom/vc/b;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v4, v4, Lfr/acetelecom/vc/b;->b:Ljava/lang/String;

    const-string v5, "fr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v5, "nas"

    iget-object v6, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v6, v6, Lfr/acetelecom/vc/b;->f:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iput v0, v4, Lfr/acetelecom/vc/b;->j:I

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v5, "credits"

    iget-object v6, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v6, v6, Lfr/acetelecom/vc/b;->j:I

    invoke-virtual {v4, v5, v6}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    const-string v4, "k2"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lfr/acetelecom/vc/MainActivity;->w:Ljava/lang/String;

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v5, "K2"

    iget-object v6, p0, Lfr/acetelecom/vc/MainActivity;->w:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lfr/acetelecom/vc/MainActivity;->u:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "tok2"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lfr/acetelecom/vc/MainActivity;->v:Ljava/lang/String;

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->s()V

    const-string v4, "VC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---AsyncOperation:onPostExecute: init geocc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",nas:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v5, v5, Lfr/acetelecom/vc/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",credits:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v0, "canrec"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "canrec"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z

    :goto_1
    const-string v0, "canmask"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->B:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->B:Landroid/widget/Switch;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "canmask"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z

    :goto_2
    const-string v0, "canchangenum"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_6

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "canchangenum"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z

    :cond_6
    const-string v0, "pcListJsonVer"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    :try_start_3
    const-string v0, "firstOpen"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    const v4, 0x7f070082

    invoke-virtual {p0, v4}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lfr/acetelecom/vc/MainActivity;->f(Ljava/lang/String;)V

    const-string v4, "call_pending"

    const-string v5, "false"

    invoke-direct {p0, v4, v5}, Lfr/acetelecom/vc/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/tapjoy/Tapjoy;->setUserLevel(I)V

    const-string v4, "tpsCall"

    const-string v5, "0"

    invoke-direct {p0, v4, v5}, Lfr/acetelecom/vc/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iput v0, v4, Lfr/acetelecom/vc/b;->j:I

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v5, "credits"

    invoke-virtual {v4, v5, v0}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    :cond_7
    const-string v0, "nov"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    :goto_3
    :try_start_4
    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v4, "pcListJsonVer"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v3

    if-le v1, v3, :cond_b

    const-string v3, "VC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pcListJsonVer:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " > "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v5, "pcListJsonVer"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->x()V

    :goto_4
    if-eqz v0, :cond_8

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v3, "nov"

    invoke-virtual {v1, v3, v0}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z

    :cond_8
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "chkofferwall"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "VC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "??AsyncOperation:onPostExecute :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lfr/acetelecom/vc/MainActivity;->e(I)V

    goto/16 :goto_0

    :cond_9
    :try_start_5
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "canrec"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move v1, v2

    :goto_5
    :try_start_6
    const-string v3, "VC"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    move v0, v2

    goto/16 :goto_3

    :cond_a
    :try_start_7
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "canmask"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    :cond_b
    :try_start_8
    const-string v3, "VC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pcListJsonVer:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " prefs: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v5, "pcListJsonVer"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    const-string v0, "chk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chk get :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nas"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v5, "rec"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lfr/acetelecom/vc/b;->o:I

    const-string v0, "tps"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "creditsR"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v5, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v6, "nas08"

    invoke-virtual {v5, v6, v1}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    if-gez v0, :cond_d

    move v0, v2

    :cond_d
    if-lez v4, :cond_10

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iput v0, v1, Lfr/acetelecom/vc/b;->j:I

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v5, "credits"

    iget-object v6, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v6, v6, Lfr/acetelecom/vc/b;->j:I

    invoke-virtual {v1, v5, v6}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->H()V

    const-string v1, "VC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AsyncOperation:onPostExecute: chk ok nas:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v6, v6, Lfr/acetelecom/vc/b;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",tps:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",creditsrestant:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f070065

    invoke-virtual {p0, v5}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v5, v5, Lfr/acetelecom/vc/b;->j:I

    invoke-static {v5}, Lfr/acetelecom/vc/MainActivity;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "tpsTotCall"

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v5, "tpsTotCall"

    invoke-virtual {v1, v5, v0}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    const-string v1, "tpsCall"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lfr/acetelecom/vc/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1e

    if-lt v4, v0, :cond_f

    const-string v0, "ApresAppel+30secondes"

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->i(Ljava/lang/String;)V

    :cond_e
    :goto_6
    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rec after chk = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v5, "rec"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "rec"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_0

    const-string v0, "videoId"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_0

    goto/16 :goto_0

    :cond_f
    const-string v0, "ApresAppel-30secondes"

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->i(Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    const-string v1, "VC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AsyncOperation:chk tps"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_e

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v5, "credits"

    invoke-virtual {v4, v5, v0}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lfr/acetelecom/vc/b;->j:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->c(Z)V

    goto :goto_6

    :cond_11
    const-string v0, "pcall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/acetelecom/vc/MainActivity;->E:Z

    const-string v0, "tel"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v5, "session"

    const-string v6, "session"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lfr/acetelecom/vc/b;->i:I

    const-string v0, "VC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AsyncOperation:onPostExecute: pcall ok tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",session:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v5, v5, Lfr/acetelecom/vc/b;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",myphone:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v5, v5, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, p0, Lfr/acetelecom/vc/MainActivity;->y:J

    const-string v4, "call_pending"

    const-string v5, "true"

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v6, "hideMyPhoneNumber"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "hideon"

    :goto_7
    invoke-direct {p0, v4, v5, v0}, Lfr/acetelecom/vc/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v4, "myphonecall"

    const-string v5, "caller"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v3, "lastphone"

    invoke-virtual {v0, v3, v1}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "totCall"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v3, "totCall"

    invoke-virtual {v1, v3, v0}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    invoke-static {v0}, Lcom/tapjoy/Tapjoy;->setUserLevel(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lfr/acetelecom/vc/CallActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "fr.acetelecom.vc.TYPE"

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "fr.acetelecom.vc.VAL"

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v4, "progress"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_12
    const-string v0, "hideoff"

    goto :goto_7

    :cond_13
    const-string v0, "offerwall2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "c"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v3, "chkofferwall"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z

    if-lez v0, :cond_0

    const-string v1, "offer_kazoo"

    invoke-direct {p0, v1}, Lfr/acetelecom/vc/MainActivity;->h(Ljava/lang/String;)V

    const-string v1, "offerwall_credits_ok"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lfr/acetelecom/vc/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v4, "credits"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lfr/acetelecom/vc/b;->j:I

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v3, v1, Lfr/acetelecom/vc/b;->j:I

    add-int/2addr v3, v0

    iput v3, v1, Lfr/acetelecom/vc/b;->j:I

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v3, "credits"

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v4, v4, Lfr/acetelecom/vc/b;->j:I

    invoke-virtual {v1, v3, v4}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f07002d

    invoke-virtual {p0, v3}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    const-string v5, "credit"

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->H()V

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->E()V

    goto/16 :goto_0

    :cond_14
    const-string v0, "shared"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "c"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_15

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f07002d

    invoke-virtual {p0, v3}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    int-to-float v6, v0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "credit"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v4, "credits"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lfr/acetelecom/vc/b;->j:I

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v3, v1, Lfr/acetelecom/vc/b;->j:I

    add-int/2addr v3, v0

    iput v3, v1, Lfr/acetelecom/vc/b;->j:I

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v3, "credits"

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v4, v4, Lfr/acetelecom/vc/b;->j:I

    invoke-virtual {v1, v3, v4}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->H()V

    :cond_15
    const-string v1, "VC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsyncOperation:shared c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    const-string v0, "purchaseDroid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "c"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_18

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->r:Lcom/tapjoy/TJActionRequest;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->r:Lcom/tapjoy/TJActionRequest;

    invoke-interface {v1}, Lcom/tapjoy/TJActionRequest;->completed()V

    const/4 v1, 0x0

    iput-object v1, p0, Lfr/acetelecom/vc/MainActivity;->r:Lcom/tapjoy/TJActionRequest;

    :cond_17
    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v4, "credits"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lfr/acetelecom/vc/b;->j:I

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v3, v1, Lfr/acetelecom/vc/b;->j:I

    add-int/2addr v0, v3

    iput v0, v1, Lfr/acetelecom/vc/b;->j:I

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "credits"

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v3, v3, Lfr/acetelecom/vc/b;->j:I

    invoke-virtual {v0, v1, v3}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->H()V

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070065

    invoke-virtual {p0, v3}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v3, v3, Lfr/acetelecom/vc/b;->j:I

    invoke-static {v3}, Lfr/acetelecom/vc/MainActivity;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "buy_credits_ok"

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->K:Ljava/util/HashMap;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "BuyProd"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "AchatDone"

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->E()V

    goto/16 :goto_0

    :cond_18
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->r:Lcom/tapjoy/TJActionRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->r:Lcom/tapjoy/TJActionRequest;

    invoke-interface {v0}, Lcom/tapjoy/TJActionRequest;->cancelled()V

    goto/16 :goto_0

    :cond_19
    const-string v0, "updateUserId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUserId get :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1a

    move v0, v2

    :cond_1a
    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iput v0, v1, Lfr/acetelecom/vc/b;->j:I

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "credits"

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v3, v3, Lfr/acetelecom/vc/b;->j:I

    invoke-virtual {v0, v1, v3}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    goto/16 :goto_0

    :cond_1b
    const-string v0, "getSponsorUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSponsorUrl get :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sponsorUrl"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v3, "sponsorUrl"

    invoke-virtual {v1, v3, v0}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    const-string v1, "VC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@@@@@@@@@@@@@@@@@@ AsyncOperation:onPostExecute:err :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "typerr"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lfr/acetelecom/vc/MainActivity;->a(ILorg/json/JSONObject;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_5
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->z:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->z:Landroid/widget/ImageButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->z:Landroid/widget/ImageButton;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_0
.end method

.method b(I)V
    .locals 7

    const/4 v1, 0x0

    const/16 v6, 0x3e7

    const/4 v5, 0x1

    if-eq p1, v6, :cond_0

    const/16 v0, 0x3df

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    invoke-static {p0}, Lfr/acetelecom/vc/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lfr/acetelecom/vc/b;->a:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "uid"

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v3, v3, Lfr/acetelecom/vc/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!!!!!!!!!!!!!!!!!permGranted uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v3, v3, Lfr/acetelecom/vc/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!!!!!!!!!!!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eq p1, v6, :cond_2

    const/16 v0, 0x3e0

    if-ne p1, v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iput-object v0, v2, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v3, "myphone"

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v4, v4, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "VC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "******************** get phone TelephonyManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " *****************"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "nosim"

    invoke-virtual {v0, v2, v1}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z

    :cond_3
    :goto_0
    if-eq p1, v6, :cond_4

    const/16 v0, 0x3e1

    if-ne p1, v0, :cond_5

    :cond_4
    const-string v0, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!!!!!!!!!!!!!!!!!permGranted !!!!!!!!!!!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const-string v0, "android.permission.GET_ACCOUNTS"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_5

    aget-object v1, v3, v0

    iget-object v5, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v1, v0, Lfr/acetelecom/vc/b;->h:Ljava/lang/String;

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "************ getEmail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v2, v2, Lfr/acetelecom/vc/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ****************"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "email"

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v2, v2, Lfr/acetelecom/vc/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v0, v0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v3, "myphone"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "canchangenum"

    invoke-virtual {v0, v2, v5}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "nosim"

    invoke-virtual {v0, v2, v5}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->R()V

    goto/16 :goto_0

    :cond_8
    const-string v0, "VC"

    const-string v2, "??cannot get phone TelephonyManager ??"

    invoke-static {v0, v2}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v0, v0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    if-nez v0, :cond_9

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v3, "myphone"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    :cond_9
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "canchangenum"

    invoke-virtual {v0, v2, v5}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->R()V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "nosim"

    invoke-virtual {v0, v2, v5}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method b(Ljava/lang/String;)V
    .locals 5

    const v4, 0x7f070075

    const-string v0, "Share_Sponsor"

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->h(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const v2, 0x7f07009a

    invoke-virtual {p0, v2}, Lfr/acetelecom/vc/MainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.HTML_TEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<a href=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</a> <br>\n<br>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f070073

    invoke-virtual {p0, v1}, Lfr/acetelecom/vc/MainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public c(I)V
    .locals 6

    const/16 v5, 0x3e2

    const/16 v4, 0x3e0

    const/16 v3, 0x3df

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lfr/acetelecom/vc/MainActivity;->b(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPerms Checking permissions."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "VC"

    const-string v1, "REQUEST_ID_READ_PHONE_STATE NOT been granted. Requesting permissions."

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lfr/acetelecom/vc/MainActivity;->f(I)V

    goto :goto_0

    :cond_1
    const-string v0, "VC"

    const-string v1, "REQUEST_ID_READ_PHONE_STATE permissions have already been granted. "

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lfr/acetelecom/vc/MainActivity;->b(I)V

    goto :goto_0

    :pswitch_2
    const-string v0, "android.permission.READ_SMS"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "VC"

    const-string v1, "REQUEST_ID_READ_SMS NOT been granted. Requesting permissions."

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lfr/acetelecom/vc/MainActivity;->f(I)V

    goto :goto_0

    :cond_2
    const-string v0, "VC"

    const-string v1, "REQUEST_ID_READ_SMS permissions have already been granted. "

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lfr/acetelecom/vc/MainActivity;->b(I)V

    goto :goto_0

    :pswitch_3
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "VC"

    const-string v1, "REQUEST_ID_MIC_STORAGE NOT been granted. Requesting permissions."

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lfr/acetelecom/vc/MainActivity;->f(I)V

    goto :goto_0

    :cond_4
    const-string v0, "VC"

    const-string v1, "REQUEST_ID_MIC_STORAGE permissions have already been granted. "

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lfr/acetelecom/vc/MainActivity;->b(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3df
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method e()V
    .locals 3

    new-instance v0, Lfr/acetelecom/vc/MainActivity$1;

    invoke-direct {v0, p0}, Lfr/acetelecom/vc/MainActivity$1;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->Q:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VC"

    const-string v2, "Google Play Service is not install/enabled in this device!"

    invoke-static {v1, v2}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->showErrorNotification(ILandroid/content/Context;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "adinfo"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "VC"

    const-string v1, "This device does not support for Google Play Service!"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "adinfo"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lfr/acetelecom/vc/GCMRegistrationIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method f()V
    .locals 4

    :try_start_0
    const-string v0, "22888"

    invoke-static {v0, p0}, Lcom/fyber/Fyber;->with(Ljava/lang/String;Landroid/app/Activity;)Lcom/fyber/Fyber;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v1, v1, Lfr/acetelecom/vc/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber;->withUserId(Ljava/lang/String;)Lcom/fyber/Fyber;

    move-result-object v0

    const-string v1, "19a4710f4d1894b02943673c99e1565a"

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber;->withSecurityToken(Ljava/lang/String;)Lcom/fyber/Fyber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber;->start()Lcom/fyber/Fyber$Settings;

    move-result-object v0

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->VCS_DEFAULT_CURRENCY:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "minutes"

    invoke-virtual {v0, v1, v2}, Lcom/fyber/Fyber$Settings;->setCustomUIString(Lcom/fyber/Fyber$Settings$UIStringIdentifier;Ljava/lang/String;)Lcom/fyber/Fyber$Settings;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->VCS_COINS_NOTIFICATION:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const v2, 0x7f07002d

    invoke-virtual {p0, v2}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fyber/Fyber$Settings;->setCustomUIString(Lcom/fyber/Fyber$Settings$UIStringIdentifier;Ljava/lang/String;)Lcom/fyber/Fyber$Settings;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->W:Lcom/fyber/requesters/VirtualCurrencyCallback;

    invoke-static {v0}, Lcom/fyber/requesters/VirtualCurrencyRequester;->create(Lcom/fyber/requesters/VirtualCurrencyCallback;)Lcom/fyber/requesters/VirtualCurrencyRequester;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fyber/requesters/VirtualCurrencyRequester;->request(Landroid/content/Context;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->V:Lcom/fyber/requesters/RequestCallback;

    invoke-static {v0}, Lcom/fyber/requesters/OfferWallRequester;->create(Lcom/fyber/requesters/RequestCallback;)Lcom/fyber/requesters/OfferWallRequester;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->a:Lcom/fyber/requesters/OfferWallRequester;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->a:Lcom/fyber/requesters/OfferWallRequester;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->a:Lcom/fyber/requesters/OfferWallRequester;

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/requesters/OfferWallRequester;->request(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?Fyber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public g()Z
    .locals 3

    const/4 v0, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()I
    .locals 4

    const/4 v1, -0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lfr/acetelecom/vc/MainActivity;->ab:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    sget-object v2, Lfr/acetelecom/vc/MainActivity;->ab:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NO PERM ? FOR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lfr/acetelecom/vc/MainActivity;->ab:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3e2

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->c(I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lfr/acetelecom/vc/MainActivity;->ab:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lfr/acetelecom/vc/MainActivity;->ab:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->g(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "permission has already been granted. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lfr/acetelecom/vc/MainActivity;->ab:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult getPackageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x162e

    if-ne p1, v0, :cond_1

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WINFREEMIN_REQUEST_CODE onActivityResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lfr/acetelecom/vc/MainActivity;->a(ILandroid/content/Intent;)V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    invoke-direct {p0, p3}, Lfr/acetelecom/vc/MainActivity;->c(Landroid/content/Intent;)V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x4d2

    if-ne p1, v0, :cond_3

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OFFERWALL_REQUEST_CODE onActivityResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "urls"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->t:Lfr/acetelecom/vc/c/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->t:Lfr/acetelecom/vc/c/d;

    invoke-virtual {v0, p1, p2, p3}, Lfr/acetelecom/vc/c/d;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "VC"

    const-string v1, "onActivityResult handled by IABUtil."

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onContentDismiss(Lcom/tapjoy/TJPlacement;)V
    .locals 3

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tapjoy onContentDismiss : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onContentReady(Lcom/tapjoy/TJPlacement;)V
    .locals 3

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tapjoy onContentReady : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->showContent()V

    return-void
.end method

.method public onContentShow(Lcom/tapjoy/TJPlacement;)V
    .locals 3

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tapjoy onContentShow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "********************** onCreate *****************************"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-boolean v6, p0, Lfr/acetelecom/vc/MainActivity;->E:Z

    const-string v0, "VC"

    const-string v1, "********************** onCreate ?? savedInstanceState *****************************"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f03003f

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->setContentView(I)V

    const v0, 0x7f0e0111

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->p:Landroid/view/View;

    new-instance v0, Lfr/acetelecom/vc/b;

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lfr/acetelecom/vc/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "dataSoundName"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lcom/google/firebase/a/a;->a(Landroid/content/Context;)Lcom/google/firebase/a/a;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->e:Lcom/google/firebase/a/a;

    invoke-static {}, La/a/a/a/c;->j()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    const-string v1, "UlUSzLHIe4Zh2EkUQOxU7i3sA"

    const-string v4, "7efQoylidmIW3w9l8p2qUFtDZEQyIvmuj2mT3rxHzE4XE42CUM"

    invoke-direct {v0, v1, v4}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/digits/sdk/android/ac$a;

    invoke-direct {v1}, Lcom/digits/sdk/android/ac$a;-><init>()V

    new-array v4, v8, [La/a/a/a/i;

    new-instance v5, Lcom/twitter/sdk/android/core/o;

    invoke-direct {v5, v0}, Lcom/twitter/sdk/android/core/o;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lcom/digits/sdk/android/ac$a;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {p0, v4}, La/a/a/a/c;->a(Landroid/content/Context;[La/a/a/a/i;)La/a/a/a/c;

    :cond_1
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v0, v0, Lfr/acetelecom/vc/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v0, v0, Lfr/acetelecom/vc/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v8, :cond_6

    :cond_2
    const/16 v0, 0x3df

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->c(I)V

    :goto_0
    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->e()V

    new-instance v0, Lfr/acetelecom/vc/c;

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    invoke-direct {v0, v1, p0, v4, p0}, Lfr/acetelecom/vc/c;-><init>(Ljava/lang/String;Landroid/content/Context;Lfr/acetelecom/vc/b;Lfr/acetelecom/vc/c$a;)V

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->O:Lfr/acetelecom/vc/c;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const-string v4, "VC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Height : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " Width : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAorxdgGzvkC257RLKbKjxlTmXN60ho3X1vg0xKjnIR7PHHEuWW5S/9rfhZ8Vo2GPYKNlvY8aPr2dThM2rhmKvBfgkMcI6ug3DlrNjbuwANQJs0uJHyfl1tzMQMZT1P2a511yyBzoAZcJAjWlVtjdLWnmHUoTmT0dZoQ4yWDs+LvukxcdLPDpiyDhxgncqneQEf+88kWb9zKILILSBgcL7XfVPiGv6lfZDLyziXDWzg7qfsDk/4e24foXHvrWxMV1ny/O223jJ5jEzTz4QLpysn1M3XPovdDY6C2+PA"

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->u:Ljava/lang/String;

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->m()V

    const-string v0, "VC"

    const-string v1, "Tapjoy connect"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "TJC_OPTION_USER_ID"

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v5, "uid"

    const-string v6, "?"

    invoke-virtual {v4, v5, v6}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "tpPfL9eTR162ZqLjBtePAwECTvrjwc9d3dgslTmMyKIfT0wNkNEHXG1bnbRV"

    new-instance v5, Lfr/acetelecom/vc/MainActivity$47;

    invoke-direct {v5, p0}, Lfr/acetelecom/vc/MainActivity$47;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-static {v1, v4, v0, v5}, Lcom/tapjoy/Tapjoy;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    const v0, 0x7f0e0114

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->a(Landroid/support/v7/widget/Toolbar;)V

    new-instance v1, Lfr/acetelecom/vc/MainActivity$a;

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lfr/acetelecom/vc/MainActivity$a;-><init>(Lfr/acetelecom/vc/MainActivity;Landroid/support/v4/app/FragmentManager;)V

    const v0, 0x7f0e0116

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->b:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const v0, 0x7f0e0115

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->b:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lfr/acetelecom/vc/MainActivity$48;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$48;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->b:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lfr/acetelecom/vc/MainActivity$49;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/MainActivity$49;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :try_start_0
    const-string v0, "soundtouch"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "soundstretch"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v0, v0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, ""

    iput-object v1, v0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "myphone"

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v4, v4, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, ""

    iput-object v1, v0, Lfr/acetelecom/vc/b;->e:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "lastphone"

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v4, v4, Lfr/acetelecom/vc/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_4
    const-string v1, "fr.acetelecom.vc.url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "fr.acetelecom.vc.url"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v4, "urls"

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "VC"

    const-string v1, "**** onCreate intent urls OK onCreate "

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.tapjoy.PUSH_PAYLOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "VC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tapjoy push notification with payload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v4, "urls"

    invoke-virtual {v1, v4, v0}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->y()V

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "8********************** onCreate *****************************"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":!!::!!!!!!!!!!!!!!!!!!!!!! uid = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v4, v4, Lfr/acetelecom/vc/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "?loadLibrary:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v0, "VC"

    const-string v1, "****** onCreate intent has extra !!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    const-string v1, "VC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const-string v0, "VC"

    const-string v1, "??????? onCreate !!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0e014f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0e0149

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return v4

    :cond_0
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->t:Lfr/acetelecom/vc/c/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->t:Lfr/acetelecom/vc/c/d;

    invoke-virtual {v0}, Lfr/acetelecom/vc/c/d;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->t:Lfr/acetelecom/vc/c/d;

    return-void
.end method

.method public onEarnedCurrency(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tapjoy setEarnedCurrencyListener You\'ve just earned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p2, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->Y:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onGetCurrencyBalanceResponse(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tapjoy onGetCurrencyBalanceResponse : returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p2, :cond_0

    iput p2, p0, Lfr/acetelecom/vc/MainActivity;->X:I

    invoke-static {p2, p0}, Lcom/tapjoy/Tapjoy;->spendCurrency(ILcom/tapjoy/TJSpendCurrencyListener;)V

    :cond_0
    return-void
.end method

.method public onGetCurrencyBalanceResponseFailure(Ljava/lang/String;)V
    .locals 3

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tapjoy onGetCurrencyBalanceResponseFailure : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "VC"

    const-string v1, "********************** onNewIntent ******************"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.tapjoy.PUSH_PAYLOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**onNewIntent Tapjoy push notification with payload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "urls"

    invoke-virtual {v1, v2, v4}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "lasturls"

    invoke-virtual {v1, v2, v4}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "lasturls"

    invoke-virtual {v1, v2, v0}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** onNewIntent ***same urls:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "lasturls"

    invoke-virtual {v0, v1, v4}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "VC"

    const-string v1, "************onNewIntent push notification sans payload: *************"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->t()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/high16 v4, 0x10000000

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lfr/acetelecom/vc/WebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "fr.acetelecom.vc.MESSAGEURL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/videos2/?lang="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->G:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v5, "uid"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x162e

    invoke-virtual {p0, v1, v2}, Lfr/acetelecom/vc/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->w()V

    goto :goto_1

    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lfr/acetelecom/vc/WebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "fr.acetelecom.vc.MESSAGEURL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/terms/?lang="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->G:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lfr/acetelecom/vc/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lfr/acetelecom/vc/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "fr.acetelecom.vc.MESSAGEURL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/likevc/?lang="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->G:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto"

    const-string v3, "support@acetelecom.fr"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.extra.SUBJECT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "help-me: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v3, v3, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",my id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v3, v3, Lfr/acetelecom/vc/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",my credits: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v3, v3, Lfr/acetelecom/vc/b;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lfr/acetelecom/vc/MainActivity;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mcc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v3, v3, Lfr/acetelecom/vc/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v3, v3, Lfr/acetelecom/vc/b;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Help"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->R()V

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    :pswitch_6
    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->S()V

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0e0149
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    const-string v0, "VC"

    const-string v1, "********************** onPause *****************************"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "urls"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->Q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPurchaseRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;)V
    .locals 6

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tapjoy onPurchaseRequest : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lfr/acetelecom/vc/MainActivity;->r:Lcom/tapjoy/TJActionRequest;

    invoke-direct {p0, p3}, Lfr/acetelecom/vc/MainActivity;->j(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tapjoy onPurchaseRequest ??"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "click_buy_credits"

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->h(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->b(Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget-object v5, v0, Lfr/acetelecom/vc/b;->a:Ljava/lang/String;

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching purchase flow for credits."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "BuyProd"

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->K:Ljava/util/HashMap;

    const-string v3, "ref"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->t:Lfr/acetelecom/vc/c/d;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->K:Ljava/util/HashMap;

    const-string v2, "ref"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x2711

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity;->S:Lfr/acetelecom/vc/c/d$c;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lfr/acetelecom/vc/c/d;->a(Landroid/app/Activity;Ljava/lang/String;ILfr/acetelecom/vc/c/d$c;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->t:Lfr/acetelecom/vc/c/d;

    invoke-virtual {v0}, Lfr/acetelecom/vc/c/d;->b()V

    goto :goto_0
.end method

.method public onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V
    .locals 3

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tapjoy onRequestFailure : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 8

    const v7, 0x7f070094

    const/4 v6, 0x1

    const/4 v5, -0x1

    const v4, 0x7f070070

    const/4 v3, 0x0

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission callback called-------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "VC"

    const-string v1, "Received response for READ_PHONE_STATE permission request."

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p3

    if-ne v0, v6, :cond_0

    aget v0, p3, v3

    if-nez v0, :cond_0

    const-string v0, "VC"

    const-string v1, "READ_PHONE_STATE permission has now been granted. Showing preview."

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->p:Landroid/view/View;

    invoke-static {v0, v4, v5}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    const/16 v0, 0x3df

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->b(I)V

    goto :goto_0

    :cond_0
    const-string v0, "VC"

    const-string v1, "READ_PHONE_STATE permission was NOT granted."

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/support/v7/app/a$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/a$a;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070097

    invoke-virtual {p0, v2}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/a$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/a$a;->a(Z)Landroid/support/v7/app/a$a;

    move-result-object v1

    invoke-virtual {p0, v4}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfr/acetelecom/vc/MainActivity$43;

    invoke-direct {v3, p0}, Lfr/acetelecom/vc/MainActivity$43;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/a$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/a$a;

    move-result-object v1

    const v2, 0x7f07002a

    invoke-virtual {p0, v2}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/a$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/a$a;

    invoke-virtual {v0}, Landroid/support/v7/app/a$a;->b()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->show()V

    goto :goto_0

    :pswitch_2
    const-string v0, "VC"

    const-string v1, "Received response for READ_SMS permission request."

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p3

    if-ne v0, v6, :cond_1

    aget v0, p3, v3

    if-nez v0, :cond_1

    const-string v0, "VC"

    const-string v1, "REQUEST_ID_READ_SMS permission has now been granted. Showing preview."

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3e0

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->b(I)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "VC"

    const-string v1, "REQUEST_ID_READ_SMS permission was NOT granted."

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/support/v7/app/a$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/a$a;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070098

    invoke-virtual {p0, v2}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/a$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/a$a;->a(Z)Landroid/support/v7/app/a$a;

    move-result-object v1

    invoke-virtual {p0, v4}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfr/acetelecom/vc/MainActivity$44;

    invoke-direct {v3, p0}, Lfr/acetelecom/vc/MainActivity$44;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/a$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/a$a;

    invoke-virtual {v0}, Landroid/support/v7/app/a$a;->b()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->show()V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {p3}, Lfr/acetelecom/vc/l;->a([I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->p:Landroid/view/View;

    invoke-static {v0, v4, v5}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    const/16 v0, 0x3e2

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->b(I)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "VC"

    const-string v1, "permission were NOT granted."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lfr/acetelecom/vc/MainActivity;->ae:[I

    aget v0, v0, v3

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    new-instance v1, Landroid/support/v7/app/a$a;

    invoke-direct {v1, p0}, Landroid/support/v7/app/a$a;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/a$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/a$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/a$a;->a(Z)Landroid/support/v7/app/a$a;

    move-result-object v0

    invoke-virtual {p0, v4}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfr/acetelecom/vc/MainActivity$45;

    invoke-direct {v3, p0}, Lfr/acetelecom/vc/MainActivity$45;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/a$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/a$a;

    invoke-virtual {v1}, Landroid/support/v7/app/a$a;->b()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->show()V

    goto/16 :goto_0

    :cond_4
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lfr/acetelecom/vc/MainActivity;->ae:[I

    aget v0, v0, v6

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lfr/acetelecom/vc/MainActivity;->ae:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    invoke-static {p3}, Lfr/acetelecom/vc/l;->a([I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->p:Landroid/view/View;

    invoke-static {v0, v4, v5}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->b(I)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "VC"

    const-string v1, "permission were NOT granted."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/support/v7/app/a$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/a$a;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/a$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/a$a;->a(Z)Landroid/support/v7/app/a$a;

    move-result-object v1

    invoke-virtual {p0, v4}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfr/acetelecom/vc/MainActivity$46;

    invoke-direct {v3, p0}, Lfr/acetelecom/vc/MainActivity$46;-><init>(Lfr/acetelecom/vc/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/a$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/a$a;

    invoke-virtual {v0}, Landroid/support/v7/app/a$a;->b()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->show()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3df
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onRequestSuccess(Lcom/tapjoy/TJPlacement;)V
    .locals 3

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tapjoy onRequestSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->isContentAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tapjoy No content available ::: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    const-string v0, "VC"

    const-string v1, "********************** onResume *****************************"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->Q:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "RegistrationSuccess"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->Q:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "RegistrationError"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->Q:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "DeepLinkSuccess"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->Q:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "PushSuccess"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iput-boolean v5, p0, Lfr/acetelecom/vc/MainActivity;->E:Z

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->O:Lfr/acetelecom/vc/c;

    if-nez v0, :cond_0

    new-instance v0, Lfr/acetelecom/vc/c;

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    invoke-direct {v0, v1, p0, v2, p0}, Lfr/acetelecom/vc/c;-><init>(Ljava/lang/String;Landroid/content/Context;Lfr/acetelecom/vc/b;Lfr/acetelecom/vc/c$a;)V

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->O:Lfr/acetelecom/vc/c;

    const-string v0, "VC"

    const-string v1, "********************** onResume recreate beCli *****************************"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->f()V

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->P()V

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->H()V

    iget-boolean v0, p0, Lfr/acetelecom/vc/MainActivity;->x:Z

    if-eqz v0, :cond_1

    iput-boolean v5, p0, Lfr/acetelecom/vc/MainActivity;->x:Z

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->O:Lfr/acetelecom/vc/c;

    const-string v1, "shared"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?share="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v4, "share"

    invoke-virtual {v3, v4, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "openCall"

    invoke-virtual {v0, v1, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "openCall"

    invoke-virtual {v0, v1, v5}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->M()V

    :cond_2
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "errDial"

    invoke-virtual {v0, v1, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v1, "errDial"

    invoke-virtual {v0, v1, v5}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z

    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/MainActivity;->k(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->B()V

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->p()V

    invoke-static {}, La/a/a/a/c;->j()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    const-string v1, "UlUSzLHIe4Zh2EkUQOxU7i3sA"

    const-string v2, "7efQoylidmIW3w9l8p2qUFtDZEQyIvmuj2mT3rxHzE4XE42CUM"

    invoke-direct {v0, v1, v2}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/digits/sdk/android/ac$a;

    invoke-direct {v1}, Lcom/digits/sdk/android/ac$a;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [La/a/a/a/i;

    new-instance v3, Lcom/twitter/sdk/android/core/o;

    invoke-direct {v3, v0}, Lcom/twitter/sdk/android/core/o;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V

    aput-object v3, v2, v5

    const/4 v0, 0x1

    invoke-virtual {v1}, Lcom/digits/sdk/android/ac$a;->a()Lcom/digits/sdk/android/ac;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {p0, v2}, La/a/a/a/c;->a(Landroid/content/Context;[La/a/a/a/i;)La/a/a/a/c;

    :cond_4
    return-void
.end method

.method public onRewardRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tapjoy onRewardRequest : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSpendCurrencyResponse(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tapjoy onSpendCurrencyResponse : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lfr/acetelecom/vc/MainActivity;->X:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->Y:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSpendCurrencyResponseFailure(Ljava/lang/String;)V
    .locals 3

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tapjoy onSpendCurrencyResponseFailure error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 5

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    const-string v0, "VC"

    const-string v1, "********************** onStart *****************************"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->q()Z

    invoke-static {p0}, Lcom/tapjoy/Tapjoy;->onActivityStart(Landroid/app/Activity;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->O:Lfr/acetelecom/vc/c;

    if-nez v0, :cond_0

    new-instance v0, Lfr/acetelecom/vc/c;

    invoke-direct {p0}, Lfr/acetelecom/vc/MainActivity;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    invoke-direct {v0, v1, p0, v2, p0}, Lfr/acetelecom/vc/c;-><init>(Ljava/lang/String;Landroid/content/Context;Lfr/acetelecom/vc/b;Lfr/acetelecom/vc/c$a;)V

    iput-object v0, p0, Lfr/acetelecom/vc/MainActivity;->O:Lfr/acetelecom/vc/c;

    const-string v0, "VC"

    const-string v1, "********************** onStart recreate beCli *****************************"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity;->w:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "VC"

    const-string v1, "hMapKey0==null:recheck !!!!!!"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lfr/acetelecom/vc/MainActivity;->d:I

    :try_start_0
    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lfr/acetelecom/vc/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lfr/acetelecom/vc/MainActivity;->d:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    iget v1, v1, Lfr/acetelecom/vc/b;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&myphone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->D:Lfr/acetelecom/vc/b;

    const-string v2, "myphone"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/acetelecom/vc/MainActivity;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity;->O:Lfr/acetelecom/vc/c;

    const-string v2, "init"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lfr/acetelecom/vc/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?getPackageManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    const-string v0, "VC"

    const-string v1, "********************** onStop *****************************"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tapjoy/Tapjoy;->onActivityStop(Landroid/app/Activity;)V

    return-void
.end method
