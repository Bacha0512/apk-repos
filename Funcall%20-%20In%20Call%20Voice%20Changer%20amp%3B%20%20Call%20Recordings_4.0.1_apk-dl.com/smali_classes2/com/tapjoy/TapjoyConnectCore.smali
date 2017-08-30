.class public Lcom/tapjoy/TapjoyConnectCore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyConnectCore$PPAThread;,
        Lcom/tapjoy/TapjoyConnectCore$a;
    }
.end annotation


# static fields
.field private static A:I = 0x0

.field private static B:F = 0.0f

.field private static C:I = 0x0

.field private static D:Ljava/lang/String; = null

.field public static final DEFAULT_CURRENCY_MULTIPLIER:F = 1.0f

.field private static E:Z

.field private static F:Ljava/lang/String;

.field private static G:Ljava/lang/String;

.field private static H:Ljava/lang/String;

.field private static I:Ljava/lang/String;

.field private static J:Ljava/lang/String;

.field private static K:Ljava/lang/String;

.field private static L:Ljava/lang/String;

.field private static M:Ljava/lang/String;

.field private static N:Ljava/lang/String;

.field private static O:Ljava/lang/String;

.field private static P:Ljava/lang/String;

.field private static Q:Ljava/lang/String;

.field private static R:Ljava/lang/String;

.field private static S:F

.field private static T:Z

.field private static U:Ljava/lang/String;

.field private static V:Ljava/lang/String;

.field private static W:Ljava/lang/String;

.field private static X:Ljava/lang/String;

.field private static Y:Ljava/lang/String;

.field protected static a:I

.field private static aA:Ljava/util/Set;

.field private static aB:I

.field private static aC:I

.field private static aD:I

.field private static aE:J

.field private static aF:J

.field private static aG:J

.field private static aH:Ljava/lang/String;

.field private static aI:I

.field private static aJ:D

.field private static aK:D

.field private static aL:J

.field private static aM:I

.field private static aN:I

.field private static aO:I

.field private static aP:Ljava/lang/String;

.field private static aQ:Ljava/lang/String;

.field private static aR:Ljava/lang/String;

.field private static ac:J

.field private static ae:Z

.field private static af:Landroid/content/pm/PackageManager;

.field private static ah:Ljava/util/Hashtable;

.field private static ai:Ljava/lang/String;

.field private static aj:Ljava/util/Map;

.field private static ak:Ljava/lang/String;

.field private static al:Ljava/lang/String;

.field private static am:Ljava/lang/String;

.field private static an:Ljava/lang/String;

.field private static ao:I

.field private static ap:Ljava/lang/String;

.field private static aq:Ljava/lang/String;

.field private static ar:J

.field private static as:Ljava/lang/String;

.field private static at:I

.field private static au:I

.field private static av:Ljava/lang/String;

.field private static aw:Ljava/lang/String;

.field private static ax:Ljava/lang/String;

.field private static ay:Ljava/lang/String;

.field private static az:Ljava/lang/String;

.field protected static b:I

.field protected static c:Ljava/lang/String;

.field protected static d:Z

.field protected static e:Ljava/lang/String;

.field protected static f:Ljava/lang/String;

.field private static g:Landroid/content/Context;

.field private static h:Ljava/lang/String;

.field private static i:Lcom/tapjoy/TapjoyConnectCore;

.field private static j:Lcom/tapjoy/TapjoyURLConnection;

.field private static k:Lcom/tapjoy/TJConnectListener;

.field private static l:Lcom/tapjoy/TJSetUserIDListener;

.field private static m:Ljava/util/Vector;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# instance fields
.field private Z:J

.field private aa:Ljava/util/Timer;

.field private ab:Z

.field private ad:Z

.field private ag:Lcom/tapjoy/TapjoyGpsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 71
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    .line 72
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->h:Ljava/lang/String;

    .line 74
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->i:Lcom/tapjoy/TapjoyConnectCore;

    .line 75
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->j:Lcom/tapjoy/TapjoyURLConnection;

    .line 76
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->k:Lcom/tapjoy/TJConnectListener;

    .line 77
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->l:Lcom/tapjoy/TJSetUserIDListener;

    .line 80
    new-instance v0, Ljava/util/Vector;

    sget-object v1, Lcom/tapjoy/TapjoyConstants;->dependencyClassNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    .line 83
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->n:Ljava/lang/String;

    .line 84
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/lang/String;

    .line 85
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    .line 86
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    .line 87
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    .line 88
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->s:Ljava/lang/String;

    .line 89
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->t:Ljava/lang/String;

    .line 90
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->u:Ljava/lang/String;

    .line 91
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->v:Ljava/lang/String;

    .line 92
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    .line 93
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    .line 94
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->y:Ljava/lang/String;

    .line 95
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->z:Ljava/lang/String;

    .line 96
    sput v5, Lcom/tapjoy/TapjoyConnectCore;->A:I

    .line 97
    sput v4, Lcom/tapjoy/TapjoyConnectCore;->B:F

    .line 98
    sput v5, Lcom/tapjoy/TapjoyConnectCore;->C:I

    .line 99
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->D:Ljava/lang/String;

    .line 100
    sput-boolean v3, Lcom/tapjoy/TapjoyConnectCore;->E:Z

    .line 102
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->F:Ljava/lang/String;

    .line 103
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->G:Ljava/lang/String;

    .line 104
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->H:Ljava/lang/String;

    .line 105
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->I:Ljava/lang/String;

    .line 106
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->J:Ljava/lang/String;

    .line 107
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->K:Ljava/lang/String;

    .line 108
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->L:Ljava/lang/String;

    .line 109
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->M:Ljava/lang/String;

    .line 111
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    .line 112
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->O:Ljava/lang/String;

    .line 114
    const-string v0, "native"

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->P:Ljava/lang/String;

    .line 115
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->Q:Ljava/lang/String;

    .line 117
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->R:Ljava/lang/String;

    .line 119
    sput v4, Lcom/tapjoy/TapjoyConnectCore;->S:F

    .line 121
    sput-boolean v3, Lcom/tapjoy/TapjoyConnectCore;->T:Z

    .line 124
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->U:Ljava/lang/String;

    .line 125
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->V:Ljava/lang/String;

    .line 126
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    .line 127
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->X:Ljava/lang/String;

    .line 135
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->Y:Ljava/lang/String;

    .line 140
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tapjoy/TapjoyConnectCore;->ac:J

    .line 148
    sput v3, Lcom/tapjoy/TapjoyConnectCore;->a:I

    .line 149
    sput v3, Lcom/tapjoy/TapjoyConnectCore;->b:I

    .line 151
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->c:Ljava/lang/String;

    .line 153
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->e:Ljava/lang/String;

    .line 154
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->f:Ljava/lang/String;

    .line 156
    sget-object v0, Lcom/tapjoy/TapjoyConnectFlag;->CONNECT_FLAG_DEFAULTS:Ljava/util/Hashtable;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->ah:Ljava/util/Hashtable;

    .line 157
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/tapjoy/TapjoyConnectCore;->Z:J

    .line 137
    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->aa:Ljava/util/Timer;

    .line 139
    iput-boolean v2, p0, Lcom/tapjoy/TapjoyConnectCore;->ab:Z

    .line 141
    iput-boolean v2, p0, Lcom/tapjoy/TapjoyConnectCore;->ad:Z

    .line 280
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    .line 281
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/eu;->a(Landroid/content/Context;)V

    .line 282
    new-instance v0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->j:Lcom/tapjoy/TapjoyURLConnection;

    .line 283
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->af:Landroid/content/pm/PackageManager;

    .line 284
    new-instance v0, Lcom/tapjoy/TapjoyGpsHelper;

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/tapjoy/TapjoyGpsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->ag:Lcom/tapjoy/TapjoyGpsHelper;

    .line 12093
    :try_start_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ah:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 12094
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->ah:Ljava/util/Hashtable;

    .line 12097
    :cond_0
    const-string v0, "TJC_OPTION_ENABLE_LOGGING"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "TJC_OPTION_ENABLE_LOGGING"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12098
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->setDebugEnabled(Z)V

    .line 12101
    :cond_1
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->k()V

    .line 12149
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 12154
    const-string v3, "raw/tapjoy_config"

    const/4 v4, 0x0

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 12155
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_0 .. :try_end_0} :catch_3

    .line 12158
    :try_start_1
    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 12159
    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/util/Properties;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_1 .. :try_end_1} :catch_3

    .line 11698
    :goto_0
    :try_start_2
    const-string v0, "unit_test_mode"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    if-ne v0, v3, :cond_2

    .line 11699
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->l()V

    .line 12808
    :cond_2
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "android_id"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12811
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->n:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 12812
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->n:Ljava/lang/String;
    :try_end_2
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_2 .. :try_end_2} :catch_3

    .line 12817
    :cond_3
    :try_start_3
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->af:Landroid/content/pm/PackageManager;

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_3 .. :try_end_3} :catch_3

    .line 12824
    :try_start_4
    const-string v0, "android"

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->u:Ljava/lang/String;

    .line 12825
    const-string v0, "android"

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->F:Ljava/lang/String;

    .line 12828
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->s:Ljava/lang/String;

    .line 12829
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->t:Ljava/lang/String;

    .line 12832
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->v:Ljava/lang/String;

    .line 12835
    const-string v0, "11.9.1"

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->y:Ljava/lang/String;

    .line 12836
    const-string v0, "1.0.8"

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->z:Ljava/lang/String;
    :try_end_4
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_4 .. :try_end_4} :catch_3

    .line 12856
    :try_start_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v6, :cond_4

    .line 12858
    new-instance v0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;-><init>(Landroid/content/Context;)V

    .line 12860
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenDensityDPI()I

    move-result v3

    sput v3, Lcom/tapjoy/TapjoyConnectCore;->A:I

    .line 12861
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenDensityScale()F

    move-result v3

    sput v3, Lcom/tapjoy/TapjoyConnectCore;->B:F

    .line 12862
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenLayoutSize()I

    move-result v0

    sput v0, Lcom/tapjoy/TapjoyConnectCore;->C:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_5 .. :try_end_5} :catch_3

    .line 12879
    :cond_4
    :goto_1
    :try_start_6
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->e(Ljava/lang/String;)Z
    :try_end_6
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_6 .. :try_end_6} :catch_3

    move-result v0

    if-eqz v0, :cond_11

    .line 12883
    :try_start_7
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 12885
    if-eqz v0, :cond_5

    .line 12887
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 12889
    if-eqz v0, :cond_5

    .line 12891
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 12893
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 12896
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_7 .. :try_end_7} :catch_3

    .line 12917
    :cond_5
    :goto_2
    :try_start_8
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 12918
    if-eqz v0, :cond_9

    .line 12920
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->G:Ljava/lang/String;

    .line 12921
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->H:Ljava/lang/String;

    .line 12926
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    .line 12927
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_7

    .line 12929
    :cond_6
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tapjoy/TapjoyConnectCore;->I:Ljava/lang/String;

    .line 12930
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->J:Ljava/lang/String;

    .line 12934
    :cond_7
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->e(Ljava/lang/String;)Z
    :try_end_8
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_8 .. :try_end_8} :catch_3

    move-result v3

    if-eqz v3, :cond_19

    .line 12939
    :try_start_9
    const-string v3, "TJC_OPTION_DEBUG_DEVICE_ID"

    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    const-string v3, "TJC_OPTION_DEBUG_DEVICE_ID"

    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_12

    .line 12940
    const-string v0, "TJC_OPTION_DEBUG_DEVICE_ID"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    .line 12944
    :goto_3
    const-string v0, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deviceID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12949
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 12951
    const-string v0, "TapjoyConnect"

    new-instance v3, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v5, "Device ID is NULL"

    invoke-direct {v3, v4, v5}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    move v0, v2

    .line 12967
    :goto_4
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ANDROID SDK VERSION: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12971
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_9

    .line 12973
    const-string v3, "TapjoyConnect"

    const-string v4, "TRYING TO GET SERIAL OF 2.3+ DEVICE..."

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12975
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore;->getSerial()Ljava/lang/String;

    move-result-object v3

    .line 12978
    if-nez v0, :cond_8

    .line 12980
    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    .line 12984
    :cond_8
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 12986
    const-string v0, "TapjoyConnect"

    new-instance v3, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v5, "Device serial number is NULL"

    invoke-direct {v3, v4, v5}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_9 .. :try_end_9} :catch_3

    .line 13022
    :cond_9
    :goto_5
    :try_start_a
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    const-string v3, "tjcPrefrences"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 13023
    const-string v3, "tapjoyInstallId"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13025
    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    if-eqz v3, :cond_a

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_a
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_a .. :try_end_a} :catch_3

    move-result v3

    if-nez v3, :cond_b

    .line 13030
    :cond_a
    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    .line 13032
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 13033
    const-string v3, "tapjoyInstallId"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13034
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_b .. :try_end_b} :catch_3

    .line 13052
    :cond_b
    :goto_6
    :try_start_c
    const-string v0, "android.hardware.location"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/tapjoy/TapjoyConnectCore;->E:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_c .. :try_end_c} :catch_3

    .line 13060
    :goto_7
    :try_start_d
    const-string v0, "TJC_OPTION_STORE_NAME"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v0, "TJC_OPTION_STORE_NAME"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 13062
    const-string v0, "TJC_OPTION_STORE_NAME"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->M:Ljava/lang/String;

    .line 13065
    new-instance v0, Ljava/util/ArrayList;

    sget-object v3, Lcom/tapjoy/TapjoyConnectFlag;->STORE_ARRAY:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13068
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->M:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 13070
    const-string v0, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Warning -- undefined STORE_NAME: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->M:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_d .. :try_end_d} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_d .. :try_end_d} :catch_3

    .line 13077
    :cond_c
    :try_start_e
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->M:Ljava/lang/String;

    .line 13894
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13897
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1a

    .line 13900
    const-string v0, "market://details"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 13901
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->af:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 13904
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1d

    move v0, v1

    .line 13077
    :goto_8
    sput-boolean v0, Lcom/tapjoy/TapjoyConnectCore;->T:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_e .. :try_end_e} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_e .. :try_end_e} :catch_3

    .line 11706
    :goto_9
    :try_start_f
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->i()V

    .line 11709
    const-string v0, "TJC_OPTION_DISABLE_PERSISTENT_IDS"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v0, "TJC_OPTION_DISABLE_PERSISTENT_IDS"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 11710
    const-string v0, "TJC_OPTION_DISABLE_PERSISTENT_IDS"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->f:Ljava/lang/String;

    .line 11714
    :cond_d
    const-string v0, "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v0, "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 11715
    const-string v0, "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->e:Ljava/lang/String;

    .line 11719
    :cond_e
    const-string v0, "TJC_OPTION_USER_ID"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v0, "TJC_OPTION_USER_ID"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 11720
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting userID to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "TJC_OPTION_USER_ID"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11721
    const-string v0, "TJC_OPTION_USER_ID"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    .line 11724
    :cond_f
    const-string v0, "TJC_OPTION_SERVICE_URL"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11725
    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->getRedirectDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->R:Ljava/lang/String;

    .line 11727
    const-string v1, "TapjoyConnect"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "deviceID: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "TJC_OPTION_DEBUG_DEVICE_ID"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v0, "TJC_OPTION_DEBUG_DEVICE_ID"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    const-string v0, " *debug_device_id*"

    :goto_a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11729
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ah:Ljava/util/Hashtable;

    if-eqz v0, :cond_10

    .line 11730
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->j()V

    .line 291
    :cond_10
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore;->callConnect()V

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->ad:Z

    .line 308
    :goto_b
    return-void

    .line 12818
    :catch_0
    move-exception v0

    .line 12820
    new-instance v1, Lcom/tapjoy/TapjoyException;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/TapjoyException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_f
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_f .. :try_end_f} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_f .. :try_end_f} :catch_3

    .line 296
    :catch_1
    move-exception v0

    .line 298
    const-string v1, "TapjoyConnect"

    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyIntegrationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 299
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->f()V

    .line 300
    sget-object v0, Lcom/tapjoy/internal/eo;->b:Lcom/tapjoy/internal/eo$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/eo$a;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_b

    .line 12867
    :catch_2
    move-exception v0

    .line 12869
    :try_start_10
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error getting screen density/dimensions/layout: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_10 .. :try_end_10} :catch_3

    goto/16 :goto_1

    .line 302
    :catch_3
    move-exception v0

    .line 304
    const-string v1, "TapjoyConnect"

    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 305
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->f()V

    .line 306
    sget-object v0, Lcom/tapjoy/internal/eo;->b:Lcom/tapjoy/internal/eo$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/eo$a;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_b

    .line 12901
    :catch_4
    move-exception v0

    .line 12903
    :try_start_11
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error getting device mac address: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 12908
    :cond_11
    const-string v0, "TapjoyConnect"

    const-string v3, "*** ignore macAddress"

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_11 .. :try_end_11} :catch_3

    goto/16 :goto_2

    .line 12942
    :cond_12
    :try_start_12
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_12 .. :try_end_12} :catch_3

    goto/16 :goto_3

    .line 13003
    :catch_5
    move-exception v0

    .line 13005
    :try_start_13
    const-string v3, "TapjoyConnect"

    new-instance v4, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v5, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Cannot get deviceID -- "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 13006
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;
    :try_end_13
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_13 .. :try_end_13} :catch_3

    goto/16 :goto_5

    .line 12955
    :cond_13
    :try_start_14
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    const-string v3, "000000000000000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 12957
    :cond_14
    const-string v0, "TapjoyConnect"

    new-instance v3, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v5, "Device ID is empty or an emulator"

    invoke-direct {v3, v4, v5}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    move v0, v2

    goto/16 :goto_4

    .line 12963
    :cond_15
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    move v0, v1

    .line 12964
    goto/16 :goto_4

    .line 12990
    :cond_16
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    const-string v3, "000000000000000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    const-string v3, "unknown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 12992
    :cond_17
    const-string v0, "TapjoyConnect"

    new-instance v3, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v5, "Device serial number is empty or an emulator"

    invoke-direct {v3, v4, v5}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto/16 :goto_5

    .line 12998
    :cond_18
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_14 .. :try_end_14} :catch_3

    goto/16 :goto_5

    .line 13011
    :cond_19
    :try_start_15
    const-string v0, "TapjoyConnect"

    const-string v3, "*** ignore deviceID"

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 13036
    :catch_6
    move-exception v0

    .line 13038
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error generating install id: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 13054
    :catch_7
    move-exception v0

    .line 13056
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error trying to detect capabilities on devicee: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_15 .. :try_end_15} :catch_3

    goto/16 :goto_7

    .line 13907
    :cond_1a
    :try_start_16
    const-string v1, "gfan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 13910
    const-string v0, "com.mappn.gfan"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->d(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_8

    .line 13912
    :cond_1b
    const-string v1, "skt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 13915
    const-string v0, "com.skt.skaf.TSCINSTALL"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->d(Ljava/lang/String;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_16 .. :try_end_16} :catch_3

    move-result v0

    goto/16 :goto_8

    .line 13079
    :catch_8
    move-exception v0

    .line 13081
    :try_start_17
    const-string v1, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error trying to detect store intent on devicee: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 11727
    :cond_1c
    const-string v0, ""
    :try_end_17
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_17 .. :try_end_17} :catch_3

    goto/16 :goto_a

    :catch_9
    move-exception v0

    goto/16 :goto_0

    :cond_1d
    move v0, v2

    goto/16 :goto_8
.end method

.method static synthetic a(Lcom/tapjoy/TapjoyConnectCore;)Lcom/tapjoy/TapjoyGpsHelper;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->ag:Lcom/tapjoy/TapjoyGpsHelper;

    return-object v0
.end method

.method private static a(J)Ljava/lang/String;
    .locals 8

    .prologue
    .line 2009
    const-string v0, ""

    .line 2015
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2022
    :goto_0
    return-object v0

    .line 2017
    :catch_0
    move-exception v1

    .line 2019
    const-string v2, "TapjoyConnect"

    new-instance v3, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error in computing verifier value -- "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto :goto_0
.end method

.method private static a(JLjava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 2059
    const-string v0, ""

    .line 2065
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2072
    :goto_0
    return-object v0

    .line 2067
    :catch_0
    move-exception v1

    .line 2069
    const-string v2, "TapjoyConnect"

    new-instance v3, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error in computing packageNamesVerifier -- "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto :goto_0
.end method

.method private static declared-synchronized a(Ljava/util/List;)V
    .locals 6

    .prologue
    .line 1568
    const-class v1, Lcom/tapjoy/TapjoyConnectCore;

    monitor-enter v1

    :try_start_0
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/lang/String;

    .line 1570
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->af:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 1571
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1574
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1581
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1583
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MATCH: installed packageName: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1587
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/lang/String;

    .line 1589
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1568
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1593
    :cond_2
    monitor-exit v1

    return-void
.end method

.method private static a(Ljava/util/Properties;)V
    .locals 3

    .prologue
    .line 1169
    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 1171
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1175
    :try_start_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1176
    invoke-virtual {p0, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1177
    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1180
    :catch_0
    move-exception v0

    const-string v0, "TapjoyConnect"

    const-string v1, "Error parsing configuration properties in tapjoy_config.txt"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1183
    :cond_0
    return-void
.end method

.method static synthetic a(Z)V
    .locals 4

    .prologue
    .line 67
    .line 50256
    if-eqz p0, :cond_1

    .line 50257
    const-string v0, "TapjoyConnect"

    const-string v1, "Set userID is successful"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50258
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->l:Lcom/tapjoy/TJSetUserIDListener;

    if-eqz v0, :cond_0

    .line 50259
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->l:Lcom/tapjoy/TJSetUserIDListener;

    invoke-interface {v0}, Lcom/tapjoy/TJSetUserIDListener;->onSetUserIDSuccess()V

    :cond_0
    :goto_0
    return-void

    .line 50262
    :cond_1
    const-string v0, "Failed to set userID"

    .line 50263
    const-string v1, "TapjoyConnect"

    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-direct {v2, v3, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 50264
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->l:Lcom/tapjoy/TJSetUserIDListener;

    if-eqz v1, :cond_0

    .line 50265
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->l:Lcom/tapjoy/TJSetUserIDListener;

    invoke-interface {v1, v0}, Lcom/tapjoy/TJSetUserIDListener;->onSetUserIDFailure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 67
    .line 50202
    invoke-static {p0}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 50204
    if-eqz v2, :cond_3

    .line 50206
    const-string v0, "PackageNames"

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v3

    .line 50209
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 50212
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    move v0, v1

    .line 50219
    :goto_0
    const/16 v5, 0x2c

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 50222
    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 50225
    const-string v5, "TapjoyConnect"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "parse: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50226
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 50239
    invoke-static {v4}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/util/List;)V

    .line 50242
    :cond_0
    const-string v0, "Success"

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    .line 50245
    if-eqz v0, :cond_1

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 50251
    :cond_1
    :goto_1
    return v1

    .line 50233
    :cond_2
    const-string v6, "TapjoyConnect"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "parse: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50234
    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 50235
    add-int/lit8 v0, v5, 0x1

    goto :goto_0

    .line 50255
    :cond_3
    const/4 v1, 0x1

    .line 67
    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1854
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->af:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v2

    .line 1857
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 1858
    iget-object v4, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1867
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->af:Landroid/content/pm/PackageManager;

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1870
    const/4 v0, 0x1

    .line 1881
    :cond_0
    return v0

    .line 1857
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Z)Z
    .locals 16

    .prologue
    .line 1435
    const/4 v3, 0x0

    .line 1437
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/tapjoy/internal/br;->b(Ljava/lang/String;)Lcom/tapjoy/internal/br;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 1438
    :try_start_1
    invoke-virtual {v10}, Lcom/tapjoy/internal/br;->d()Ljava/util/Map;

    move-result-object v12

    .line 1440
    const-string v2, "app_group_id"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tapjoy/internal/cr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1441
    const-string v2, "store"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tapjoy/internal/cr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1442
    const-string v2, "analytics_api_key"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tapjoy/internal/cr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1443
    const-string v2, "managed_device_id"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tapjoy/internal/cr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1444
    const-string v2, "package_names"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tapjoy/internal/cr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1445
    const-string v2, "cache_max_age"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1447
    new-instance v2, Lcom/tapjoy/internal/el;

    invoke-direct {v2, v4}, Lcom/tapjoy/internal/el;-><init>(Ljava/lang/String;)V

    .line 49149
    iget-object v5, v2, Lcom/tapjoy/internal/el;->a:Lcom/tapjoy/internal/el$a;

    .line 1448
    sget-object v6, Lcom/tapjoy/internal/el$a;->RPC_ANALYTICS:Lcom/tapjoy/internal/el$a;

    if-eq v5, v6, :cond_0

    .line 1449
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid analytics_api_key"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1490
    :catch_0
    move-exception v2

    move-object v3, v10

    .line 1491
    :goto_0
    :try_start_2
    const-string v4, "TapjoyConnect"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1495
    invoke-static {v3}, Lcom/tapjoy/internal/da;->a(Ljava/io/Closeable;)V

    .line 1497
    :goto_1
    const/4 v2, 0x0

    :goto_2
    return v2

    .line 50141
    :cond_0
    :try_start_3
    iget-object v5, v2, Lcom/tapjoy/internal/el;->b:Ljava/lang/String;

    .line 50142
    const/16 v6, 0xd

    const-string v7, "-8000-8000-"

    const/4 v8, 0x0

    const/16 v11, 0xb

    invoke-virtual {v5, v6, v7, v8, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 50143
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x18

    const/16 v8, 0x1e

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x9

    const/16 v8, 0xd

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x1e

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 50151
    iget-object v8, v2, Lcom/tapjoy/internal/el;->c:Ljava/lang/String;

    .line 1453
    if-nez v3, :cond_a

    move-object v11, v7

    .line 1457
    :goto_3
    invoke-static {}, Lcom/tapjoy/internal/fu;->a()Lcom/tapjoy/internal/fu;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    const-string v5, "11.9.1"

    const-string v6, "https://rpc.tapjoy.com/"

    invoke-virtual/range {v2 .. v8}, Lcom/tapjoy/internal/fu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    sput-object v11, Lcom/tapjoy/TapjoyConnectCore;->U:Ljava/lang/String;

    .line 1464
    sput-object v13, Lcom/tapjoy/TapjoyConnectCore;->V:Ljava/lang/String;

    .line 1465
    sput-object v4, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    .line 1466
    sput-object v14, Lcom/tapjoy/TapjoyConnectCore;->X:Ljava/lang/String;

    .line 1468
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1469
    if-eqz v15, :cond_3

    .line 1470
    const-string v2, ","

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    .line 1471
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1472
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 1473
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1470
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 50150
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The given UUID did not come from 5Rocks."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1492
    :catch_1
    move-exception v2

    .line 1493
    :goto_5
    :try_start_4
    const-string v3, "TapjoyConnect"

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1495
    invoke-static {v10}, Lcom/tapjoy/internal/da;->a(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 1477
    :cond_3
    :try_start_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1478
    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/util/List;)V

    .line 1481
    :cond_4
    invoke-virtual {v10}, Lcom/tapjoy/internal/br;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1482
    const/4 v4, 0x0

    .line 1484
    if-nez p1, :cond_5

    .line 50152
    const-wide/16 v6, 0x0

    .line 50154
    :try_start_6
    instance-of v2, v9, Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_6

    .line 50156
    :try_start_7
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-wide v2

    .line 50169
    :goto_6
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gtz v5, :cond_8

    .line 50170
    :try_start_8
    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/TapjoyAppSettings;->removeConnectResult()V

    .line 1487
    :goto_7
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v5

    const-string v2, "configurations"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 50179
    instance-of v2, v3, Ljava/util/Map;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v2, :cond_9

    .line 50181
    :try_start_9
    iget-object v6, v5, Lcom/tapjoy/internal/eu;->a:Lcom/tapjoy/internal/es;

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    invoke-virtual {v6, v2}, Lcom/tapjoy/internal/es;->a(Ljava/util/Map;)V

    .line 50184
    invoke-static {v3}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 50185
    invoke-virtual {v5}, Lcom/tapjoy/internal/eu;->c()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "configurations"

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1495
    :cond_5
    :goto_8
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/tapjoy/internal/da;->a(Ljava/io/Closeable;)V

    const/4 v2, 0x1

    goto/16 :goto_2

    .line 50159
    :catch_2
    move-exception v2

    move-wide v2, v6

    goto :goto_6

    .line 50161
    :cond_6
    :try_start_a
    instance-of v2, v9, Ljava/lang/Number;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v2, :cond_7

    .line 50163
    :try_start_b
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result-wide v2

    goto :goto_6

    :catch_3
    move-exception v2

    :cond_7
    move-wide v2, v6

    goto :goto_6

    .line 50173
    :cond_8
    :try_start_c
    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object v5

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->s()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v2, v8

    invoke-static {}, Lcom/tapjoy/internal/y;->b()J

    move-result-wide v8

    add-long/2addr v2, v8

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v6, v2, v3}, Lcom/tapjoy/TapjoyAppSettings;->saveConnectResultAndParams(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_7

    .line 1490
    :catch_4
    move-exception v2

    move-object v3, v4

    goto/16 :goto_0

    .line 50190
    :cond_9
    if-nez v3, :cond_5

    .line 50191
    iget-object v2, v5, Lcom/tapjoy/internal/eu;->a:Lcom/tapjoy/internal/es;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/es;->a(Ljava/util/Map;)V

    .line 50193
    invoke-virtual {v5}, Lcom/tapjoy/internal/eu;->c()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "configurations"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_8

    .line 1492
    :catch_5
    move-exception v2

    move-object v10, v4

    goto/16 :goto_5

    .line 1495
    :catchall_0
    move-exception v2

    move-object v10, v3

    :goto_9
    invoke-static {v10}, Lcom/tapjoy/internal/da;->a(Ljava/io/Closeable;)V

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_9

    :catchall_2
    move-exception v2

    move-object v10, v4

    goto :goto_9

    :catchall_3
    move-exception v2

    move-object v10, v3

    goto :goto_9

    .line 1492
    :catch_6
    move-exception v2

    move-object v10, v3

    goto/16 :goto_5

    .line 1490
    :catch_7
    move-exception v2

    goto/16 :goto_0

    .line 50189
    :catch_8
    move-exception v2

    goto :goto_8

    :cond_a
    move-object v11, v3

    goto/16 :goto_3
.end method

.method static synthetic b(Lcom/tapjoy/TapjoyConnectCore;)J
    .locals 4

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->Z:J

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->Z:J

    return-wide v0
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2217
    const-string v0, "TJC_OPTION_SERVICE_URL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TJC_OPTION_PLACEMENT_SERVICE_URL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2219
    :cond_1
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ah:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2220
    return-void
.end method

.method static synthetic b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 67
    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/tapjoy/TapjoyConnectCore;)J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->Z:J

    return-wide v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->Y:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1605
    .line 1607
    :try_start_0
    invoke-static {p0}, Lcom/tapjoy/internal/br;->b(Ljava/lang/String;)Lcom/tapjoy/internal/br;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1608
    :try_start_1
    invoke-virtual {v1}, Lcom/tapjoy/internal/br;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1609
    invoke-virtual {v1}, Lcom/tapjoy/internal/br;->s()V

    .line 1610
    const-string v0, "TapjoyConnect"

    const-string v3, "Successfully sent completed Pay-Per-Action to Tapjoy server."

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    invoke-virtual {v1}, Lcom/tapjoy/internal/br;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1622
    invoke-static {v2}, Lcom/tapjoy/internal/da;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    .line 1625
    :goto_0
    return v0

    .line 1615
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lcom/tapjoy/internal/br;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1622
    invoke-static {v2}, Lcom/tapjoy/internal/da;->a(Ljava/io/Closeable;)V

    .line 1624
    :goto_1
    const-string v0, "TapjoyConnect"

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "Completed Pay-Per-Action call failed."

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 1625
    const/4 v0, 0x0

    goto :goto_0

    .line 1617
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1618
    :goto_2
    :try_start_3
    const-string v2, "TapjoyConnect"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1622
    invoke-static {v1}, Lcom/tapjoy/internal/da;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 1619
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 1620
    :goto_3
    :try_start_4
    const-string v2, "TapjoyConnect"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1622
    invoke-static {v1}, Lcom/tapjoy/internal/da;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    invoke-static {v1}, Lcom/tapjoy/internal/da;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 1619
    :catch_2
    move-exception v0

    goto :goto_3

    .line 1617
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->D:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1829
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->af:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 1832
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1834
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1836
    const/4 v0, 0x1

    .line 1842
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic e()Lcom/tapjoy/TapjoyURLConnection;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->j:Lcom/tapjoy/TapjoyURLConnection;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 2229
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->af:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2231
    if-eqz v0, :cond_0

    .line 2232
    const/4 v0, 0x0

    .line 2234
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static f()V
    .locals 7

    .prologue
    .line 311
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->O:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    invoke-static {}, Lcom/tapjoy/internal/fu;->a()Lcom/tapjoy/internal/fu;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->h:Ljava/lang/String;

    const-string v3, "11.9.1"

    const-string v4, "https://rpc.tapjoy.com/"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->O:Ljava/lang/String;

    sget-object v6, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/tapjoy/internal/fu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->k:Lcom/tapjoy/TJConnectListener;

    if-eqz v0, :cond_1

    .line 320
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->k:Lcom/tapjoy/TJConnectListener;

    invoke-interface {v0}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V

    .line 322
    :cond_1
    return-void
.end method

.method private static g()Ljava/util/Map;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 420
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14434
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14476
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 14478
    const-string v3, "plugin"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->P:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14479
    const-string v3, "sdk_type"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->Q:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14481
    const-string v3, "app_id"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14482
    const-string v3, "library_version"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->y:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14483
    const-string v3, "library_revision"

    const-string v4, "4fd6ad5"

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14484
    const-string v3, "bridge_version"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->z:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14487
    const-string v3, "app_version"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14436
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 14498
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 14500
    const-string v3, "device_name"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->s:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14501
    const-string v3, "platform"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->F:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14502
    const-string v3, "os_version"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->v:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14503
    const-string v3, "device_manufacturer"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->t:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14504
    const-string v3, "device_type"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->u:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14505
    const-string v3, "screen_layout_size"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/tapjoy/TapjoyConnectCore;->C:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14506
    const-string v3, "device_location"

    sget-boolean v4, Lcom/tapjoy/TapjoyConnectCore;->E:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14507
    const-string v3, "store_name"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->M:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14508
    const-string v3, "store_view"

    sget-boolean v4, Lcom/tapjoy/TapjoyConnectCore;->T:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14509
    const-string v3, "carrier_name"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->G:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14510
    const-string v3, "carrier_country_code"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->H:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14511
    const-string v3, "mobile_network_code"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->J:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14512
    const-string v3, "mobile_country_code"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->I:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14515
    const-string v3, "country_code"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14516
    const-string v3, "language_code"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14519
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getConnectionType()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->K:Ljava/lang/String;

    .line 14520
    const-string v3, "connection_type"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->K:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14523
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getConnectionSubType()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->L:Ljava/lang/String;

    .line 14524
    const-string v3, "connection_subtype"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->L:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14527
    const-string v3, "screen_density"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/tapjoy/TapjoyConnectCore;->A:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14437
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 14538
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 14541
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->n()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 14542
    const-string v3, "advertising_id"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->c:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14543
    const-string v3, "ad_tracking_enabled"

    sget-boolean v4, Lcom/tapjoy/TapjoyConnectCore;->d:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14547
    :cond_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->o()Z

    move-result v3

    if-nez v3, :cond_1

    .line 14549
    const-string v3, "android_id"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->n:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14550
    const-string v3, "udid"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14551
    const-string v3, "mac_address"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14554
    :cond_1
    const-string v3, "install_id"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14556
    const-string v3, "publisher_user_id"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->D:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14559
    const-string v3, "ad_id_check_disabled"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->e:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14562
    const-string v3, "persistent_ids_disabled"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->f:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14564
    sget v3, Lcom/tapjoy/TapjoyConnectCore;->a:I

    if-eqz v3, :cond_2

    .line 14565
    const-string v3, "packaged_gps_version"

    sget v4, Lcom/tapjoy/TapjoyConnectCore;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14568
    :cond_2
    sget v3, Lcom/tapjoy/TapjoyConnectCore;->b:I

    if-eqz v3, :cond_3

    .line 14569
    const-string v3, "device_gps_version"

    sget v4, Lcom/tapjoy/TapjoyConnectCore;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14573
    :cond_3
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/lang/String;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/tapjoy/TapjoyConnectCore;->ac:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x1b7740

    cmp-long v3, v4, v6

    if-lez v3, :cond_7

    .line 14574
    :cond_4
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->p()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/lang/String;

    .line 14579
    :goto_0
    const-string v3, "session_id"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14438
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 14590
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 14591
    const-string v3, "app_group_id"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->U:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14592
    const-string v3, "store"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->V:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14593
    const-string v3, "analytics_api_key"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14594
    const-string v3, "managed_device_id"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->X:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14439
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 14442
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/TapjoyCache;->getCachedOfferIDs()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/TapjoyCache;->getCachedOfferIDs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 14443
    const-string v2, "cached_ids"

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tapjoy/TapjoyCache;->getCachedOfferIDs()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14446
    :cond_5
    const-string v2, "display_multiplier"

    sget v3, Lcom/tapjoy/TapjoyConnectCore;->S:F

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 422
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 14604
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14606
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->i()V

    .line 14620
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 14622
    const-string v3, "analytics_id"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->ak:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14623
    const-string v3, "pkg_id"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->al:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14624
    const-string v3, "pkg_sign"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->am:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14625
    const-string v3, "display_d"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/tapjoy/TapjoyConnectCore;->aM:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14626
    const-string v3, "display_w"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/tapjoy/TapjoyConnectCore;->aN:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14627
    const-string v3, "display_h"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/tapjoy/TapjoyConnectCore;->aO:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14628
    const-string v3, "country_sim"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->aP:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14629
    const-string v3, "timezone"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->aQ:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14607
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 14635
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 14637
    const-string v3, "pkg_ver"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->an:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14638
    const-string v3, "pkg_rev"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/tapjoy/TapjoyConnectCore;->ao:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14639
    const-string v3, "pkg_data_ver"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->ap:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14640
    const-string v3, "installer"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->aq:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14644
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->M:Ljava/lang/String;

    invoke-static {v3}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 14645
    const-string v3, "store_name"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->aR:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14608
    :cond_6
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 14609
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->h()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 423
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 425
    return-object v0

    .line 14577
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/tapjoy/TapjoyConnectCore;->ac:J

    goto/16 :goto_0
.end method

.method public static getAndroidID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2501
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1651
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    return-object v0
.end method

.method public static getAwardCurrencyVerifier(JILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "time"    # J
    .param p2, "amount"    # I
    .param p3, "guid"    # Ljava/lang/String;

    .prologue
    .line 2034
    const-string v0, ""

    .line 2040
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2047
    :goto_0
    return-object v0

    .line 2042
    :catch_0
    move-exception v1

    .line 2044
    const-string v2, "TapjoyConnect"

    new-instance v3, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error in computing awardCurrencyVerifier -- "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto :goto_0
.end method

.method public static getCarrierName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1719
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->G:Ljava/lang/String;

    return-object v0
.end method

.method public static getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 2479
    const-string v0, ""

    .line 2481
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ah:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ah:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2483
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ah:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2486
    :cond_0
    return-object v0
.end method

.method public static getConnectURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1696
    const-string v0, "https://connect.tapjoy.com/"

    return-object v0
.end method

.method public static getConnectionSubType()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1797
    const-string v1, ""

    .line 1803
    :try_start_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1806
    if-eqz v0, :cond_0

    .line 1808
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1809
    :try_start_1
    const-string v1, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connection_sub_type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1817
    :goto_0
    return-object v0

    .line 1812
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 1814
    :goto_1
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getConnectionSubType error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1812
    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static getConnectionType()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1756
    const-string v1, ""

    .line 1762
    :try_start_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1765
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1767
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1774
    const-string v1, "mobile"

    .line 1778
    :goto_0
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connectivity: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    const-string v0, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connection_type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    .line 1787
    :goto_1
    return-object v0

    .line 1771
    :sswitch_0
    const-string v1, "wifi"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1782
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 1784
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getConnectionType error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1767
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1959
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    return-object v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1660
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceScreenDensityScale()F
    .locals 1

    .prologue
    .line 2542
    sget v0, Lcom/tapjoy/TapjoyConnectCore;->B:F

    return v0
.end method

.method public static getGenericURLParams()Ljava/util/Map;
    .locals 4

    .prologue
    .line 408
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->g()Ljava/util/Map;

    move-result-object v0

    .line 409
    const-string v1, "app_id"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 410
    return-object v0
.end method

.method public static getHostURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1678
    const-string v0, "TJC_OPTION_SERVICE_URL"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/tapjoy/TapjoyConnectCore;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->i:Lcom/tapjoy/TapjoyConnectCore;

    return-object v0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2532
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static getPlacementURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1687
    const-string v0, "TJC_OPTION_PLACEMENT_SERVICE_URL"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRedirectDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1701
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->R:Ljava/lang/String;

    return-object v0
.end method

.method public static getSecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2496
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    return-object v0
.end method

.method public static getSha1MacAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2511
    const/4 v0, 0x0

    .line 2515
    :try_start_0
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->SHA1(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2522
    :goto_0
    return-object v0

    .line 2517
    :catch_0
    move-exception v1

    .line 2519
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error generating sha1 of macAddress: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getTimeStampAndVerifierParams()Ljava/util/Map;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 461
    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 463
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 464
    const-string v4, "timestamp"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 465
    const-string v0, "verifier"

    invoke-static {v3, v0, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 467
    return-object v3
.end method

.method public static getURLParams()Ljava/util/Map;
    .locals 2

    .prologue
    .line 395
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v0

    .line 396
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getTimeStampAndVerifierParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 397
    return-object v0
.end method

.method public static getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1669
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->D:Ljava/lang/String;

    return-object v0
.end method

.method private static h()Ljava/util/Map;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 652
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 654
    const-string v0, "installed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v4, Lcom/tapjoy/TapjoyConnectCore;->ar:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 655
    const-string v0, "referrer"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->as:Ljava/lang/String;

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 658
    const-string v0, "user_level"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/tapjoy/TapjoyConnectCore;->at:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 659
    const-string v0, "friend_count"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/tapjoy/TapjoyConnectCore;->au:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 660
    const-string v0, "uv1"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->av:Ljava/lang/String;

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 661
    const-string v0, "uv2"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aw:Ljava/lang/String;

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 662
    const-string v0, "uv3"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ax:Ljava/lang/String;

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 663
    const-string v0, "uv4"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ay:Ljava/lang/String;

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 664
    const-string v0, "uv5"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->az:Ljava/lang/String;

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 665
    const/4 v0, 0x0

    .line 666
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aA:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 667
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v2, "user_tags["

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    move v1, v2

    .line 668
    goto :goto_0

    .line 669
    :cond_0
    const-string v0, "fq7"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/tapjoy/TapjoyConnectCore;->aB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 670
    const-string v0, "fq30"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/tapjoy/TapjoyConnectCore;->aC:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 673
    const-string v0, "session_total_count"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/tapjoy/TapjoyConnectCore;->aD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 674
    const-string v0, "session_total_length"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v4, Lcom/tapjoy/TapjoyConnectCore;->aE:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 675
    const-string v0, "session_last_at"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v4, Lcom/tapjoy/TapjoyConnectCore;->aF:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 676
    const-string v0, "session_last_length"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v4, Lcom/tapjoy/TapjoyConnectCore;->aG:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 679
    const-string v0, "purchase_currency"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->aH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 680
    const-string v0, "purchase_total_count"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/tapjoy/TapjoyConnectCore;->aI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 681
    const-string v0, "purchase_total_price"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v4, Lcom/tapjoy/TapjoyConnectCore;->aJ:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 682
    const-string v0, "purchase_last_price"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v4, Lcom/tapjoy/TapjoyConnectCore;->aK:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 683
    const-string v0, "purchase_last_at"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v4, Lcom/tapjoy/TapjoyConnectCore;->aL:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 685
    return-object v3
.end method

.method private static i()V
    .locals 4

    .prologue
    .line 738
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/fu;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fu;->a(Z)Lcom/tapjoy/internal/gl$n;

    move-result-object v0

    .line 15385
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    .line 739
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$l;->h()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->ak:Ljava/lang/String;

    .line 16385
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    .line 740
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$l;->y()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->al:Ljava/lang/String;

    .line 17385
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    .line 741
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$l;->A()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->am:Ljava/lang/String;

    .line 18385
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    .line 18759
    iget v1, v1, Lcom/tapjoy/internal/gl$l;->c:I

    .line 742
    sput v1, Lcom/tapjoy/TapjoyConnectCore;->aM:I

    .line 19385
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    .line 19774
    iget v1, v1, Lcom/tapjoy/internal/gl$l;->d:I

    .line 743
    sput v1, Lcom/tapjoy/TapjoyConnectCore;->aN:I

    .line 20385
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    .line 20789
    iget v1, v1, Lcom/tapjoy/internal/gl$l;->e:I

    .line 744
    sput v1, Lcom/tapjoy/TapjoyConnectCore;->aO:I

    .line 21385
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    .line 745
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$l;->E()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aP:Ljava/lang/String;

    .line 22385
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    .line 746
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$l;->w()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aQ:Ljava/lang/String;

    .line 22400
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/gl$a;

    .line 748
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$a;->f()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->an:Ljava/lang/String;

    .line 23400
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/gl$a;

    .line 24206
    iget v1, v1, Lcom/tapjoy/internal/gl$a;->c:I

    .line 749
    sput v1, Lcom/tapjoy/TapjoyConnectCore;->ao:I

    .line 24400
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/gl$a;

    .line 750
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$a;->i()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->ap:Ljava/lang/String;

    .line 25400
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/gl$a;

    .line 751
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$a;->k()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aq:Ljava/lang/String;

    .line 26400
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/gl$a;

    .line 752
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$a;->m()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aR:Ljava/lang/String;

    .line 26415
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 26750
    iget-wide v2, v1, Lcom/tapjoy/internal/gl$z;->c:J

    .line 754
    sput-wide v2, Lcom/tapjoy/TapjoyConnectCore;->ar:J

    .line 27415
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 755
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$z;->g()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->as:Ljava/lang/String;

    .line 28415
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 29133
    iget v1, v1, Lcom/tapjoy/internal/gl$z;->p:I

    .line 756
    sput v1, Lcom/tapjoy/TapjoyConnectCore;->at:I

    .line 29415
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 30148
    iget v1, v1, Lcom/tapjoy/internal/gl$z;->q:I

    .line 757
    sput v1, Lcom/tapjoy/TapjoyConnectCore;->au:I

    .line 30415
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 758
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$z;->C()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->av:Ljava/lang/String;

    .line 31415
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 759
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$z;->E()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aw:Ljava/lang/String;

    .line 32415
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 760
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$z;->G()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->ax:Ljava/lang/String;

    .line 33415
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 761
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$z;->I()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->ay:Ljava/lang/String;

    .line 34415
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 762
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$z;->K()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->az:Ljava/lang/String;

    .line 763
    new-instance v1, Ljava/util/HashSet;

    .line 35415
    iget-object v2, v0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 36368
    iget-object v2, v2, Lcom/tapjoy/internal/gl$z;->r:Lcom/tapjoy/internal/ds;

    .line 763
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aA:Ljava/util/Set;

    .line 36415
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 36807
    iget v1, v1, Lcom/tapjoy/internal/gl$z;->d:I

    .line 764
    sput v1, Lcom/tapjoy/TapjoyConnectCore;->aB:I

    .line 37415
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 37822
    iget v1, v1, Lcom/tapjoy/internal/gl$z;->e:I

    .line 765
    sput v1, Lcom/tapjoy/TapjoyConnectCore;->aC:I

    .line 38415
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 38872
    iget v1, v1, Lcom/tapjoy/internal/gl$z;->g:I

    .line 766
    sput v1, Lcom/tapjoy/TapjoyConnectCore;->aD:I

    .line 39415
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 39887
    iget-wide v2, v1, Lcom/tapjoy/internal/gl$z;->h:J

    .line 767
    sput-wide v2, Lcom/tapjoy/TapjoyConnectCore;->aE:J

    .line 40415
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 40902
    iget-wide v2, v1, Lcom/tapjoy/internal/gl$z;->i:J

    .line 768
    sput-wide v2, Lcom/tapjoy/TapjoyConnectCore;->aF:J

    .line 41415
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 41917
    iget-wide v2, v1, Lcom/tapjoy/internal/gl$z;->j:J

    .line 769
    sput-wide v2, Lcom/tapjoy/TapjoyConnectCore;->aG:J

    .line 42415
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 770
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$z;->p()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aH:Ljava/lang/String;

    .line 43415
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 43974
    iget v1, v1, Lcom/tapjoy/internal/gl$z;->k:I

    .line 771
    sput v1, Lcom/tapjoy/TapjoyConnectCore;->aI:I

    .line 44415
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 44989
    iget-wide v2, v1, Lcom/tapjoy/internal/gl$z;->l:D

    .line 772
    sput-wide v2, Lcom/tapjoy/TapjoyConnectCore;->aJ:D

    .line 45415
    iget-object v1, v0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 46019
    iget-wide v2, v1, Lcom/tapjoy/internal/gl$z;->n:D

    .line 773
    sput-wide v2, Lcom/tapjoy/TapjoyConnectCore;->aK:D

    .line 46415
    iget-object v0, v0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 47004
    iget-wide v0, v0, Lcom/tapjoy/internal/gl$z;->m:J

    .line 774
    sput-wide v0, Lcom/tapjoy/TapjoyConnectCore;->aL:J

    .line 775
    return-void
.end method

.method public static isConnected()Z
    .locals 1

    .prologue
    .line 2551
    sget-boolean v0, Lcom/tapjoy/TapjoyConnectCore;->ae:Z

    return v0
.end method

.method public static isFullScreenViewOpen()Z
    .locals 2

    .prologue
    .line 2183
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2184
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2187
    :pswitch_0
    const/4 v0, 0x1

    .line 2192
    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 2184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isUnitTestMode()Z
    .locals 2

    .prologue
    .line 2555
    const-string v0, "unit_test_mode"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isViewOpen()Z
    .locals 3

    .prologue
    .line 2178
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isViewOpen: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j()V
    .locals 5

    .prologue
    .line 783
    const-string v0, "TapjoyConnect"

    const-string v1, "Connect Flags:"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string v0, "TapjoyConnect"

    const-string v1, "--------------------"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ah:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 787
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 789
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 792
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "key: "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", value: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 795
    :cond_0
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hostURL: ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "TJC_OPTION_SERVICE_URL"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "redirectDomain: ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string v0, "TapjoyConnect"

    const-string v1, "--------------------"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    return-void
.end method

.method private static k()V
    .locals 9

    .prologue
    .line 1114
    :try_start_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->af:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_2

    .line 1116
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->af:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1119
    if-eqz v1, :cond_3

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 1121
    sget-object v2, Lcom/tapjoy/TapjoyConnectFlag;->FLAG_ARRAY:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 1123
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "tapjoy."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1124
    if-eqz v5, :cond_0

    .line 1126
    const-string v6, "TapjoyConnect"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Found manifest flag: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyConnectCore;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1130
    :cond_1
    const-string v0, "TapjoyConnect"

    const-string v1, "Metadata successfully loaded"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    :cond_2
    :goto_1
    return-void

    .line 1134
    :cond_3
    const-string v0, "TapjoyConnect"

    const-string v1, "No metadata present."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1138
    :catch_0
    move-exception v0

    .line 1140
    const-string v1, "TapjoyConnect"

    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error reading manifest meta-data -- "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto :goto_1
.end method

.method private l()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1193
    :try_start_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->af:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1195
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1196
    if-eqz v0, :cond_7

    .line 1198
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 47349
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47351
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 47354
    :try_start_1
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 47356
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 47359
    iget v4, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-eq v4, v5, :cond_1

    .line 47360
    const-string v4, "orientation"

    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 47363
    :cond_1
    iget v4, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-eq v4, v5, :cond_2

    .line 47364
    const-string v4, "keyboardHidden"

    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 47366
    :cond_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-eqz v4, :cond_4

    .line 47367
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 47368
    new-instance v2, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " property is not specified in manifest configChanges for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 47385
    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "[ClassNotFoundException] Could not find dependency class "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1204
    :catch_1
    move-exception v0

    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    const-string v1, "NameNotFoundException: Could not find package."

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47370
    :cond_3
    :try_start_3
    new-instance v2, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " properties are not specified in manifest configChanges for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47374
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-lt v1, v4, :cond_5

    iget v1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v1, v1, 0x400

    const/16 v4, 0x400

    if-eq v1, v4, :cond_5

    .line 47375
    const-string v4, "TapjoyConnect"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v1, "WARNING -- screenSize property is not specified in manifest configChanges for "

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47378
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v1, v4, :cond_6

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "com.tapjoy.TJAdUnitActivity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_6

    .line 47379
    new-instance v1, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "\'hardwareAccelerated\' property not specified in manifest for "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47381
    :cond_6
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1207
    :cond_7
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_9

    .line 1209
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v6, :cond_8

    .line 1210
    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dependency class in manifest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1212
    :cond_8
    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dependency classes in manifest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1216
    :cond_9
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->m()V

    .line 48284
    :try_start_4
    const-string v0, "com.tapjoy.TJAdUnitJSBridge"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    .line 48294
    const/4 v1, 0x1

    :try_start_5
    new-array v1, v1, [Ljava/lang/Class;

    .line 48295
    const/4 v2, 0x0

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v1, v2

    .line 48296
    const-string v2, "closeRequested"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_3

    .line 48307
    const-string v0, "mraid.js"

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->getResource(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48310
    if-nez v0, :cond_a

    .line 48311
    const-string v0, "js/mraid.js"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyUtil;->copyTextFromJarIntoString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 48313
    :cond_a
    if-nez v0, :cond_b

    .line 48314
    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    const-string v1, "ClassNotFoundException: mraid.js was not found."

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48288
    :catch_2
    move-exception v0

    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    const-string v1, "ClassNotFoundException: com.tapjoy.TJAdUnitJSBridge was not found."

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48301
    :catch_3
    move-exception v0

    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    const-string v1, "Try configuring Proguard or other code obfuscators to ignore com.tapjoy classes. Visit http://dev.tapjoy.comfor more information."

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1222
    :cond_b
    const-string v0, "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v0, "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1224
    const-string v0, "TapjoyConnect"

    const-string v1, "Skipping integration check for Google Play Services and Advertising ID. Do this only if you do not have access to Google Play Services."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    :goto_1
    return-void

    .line 1228
    :cond_c
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->ag:Lcom/tapjoy/TapjoyGpsHelper;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyGpsHelper;->checkGooglePlayIntegration()V

    goto :goto_1
.end method

.method private static m()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 1239
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1240
    sget-object v3, Lcom/tapjoy/TapjoyConstants;->dependencyPermissions:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 1242
    invoke-static {v5}, Lcom/tapjoy/TapjoyConnectCore;->e(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1244
    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1240
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1248
    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1250
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 1251
    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Missing 1 permission in manifest: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1253
    :cond_2
    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Missing "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " permissions in manifest: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1257
    :cond_3
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1258
    sget-object v2, Lcom/tapjoy/TapjoyConstants;->optionalPermissions:[Ljava/lang/String;

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_5

    aget-object v4, v2, v0

    .line 1260
    invoke-static {v4}, Lcom/tapjoy/TapjoyConnectCore;->e(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1262
    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1258
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1266
    :cond_5
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 1268
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v7, :cond_7

    .line 1269
    const-string v0, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WARNING -- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permission was not found in manifest. The exclusion of this permission could cause problems."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    :cond_6
    :goto_2
    return-void

    .line 1271
    :cond_7
    const-string v0, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WARNING -- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permissions were not found in manifest. The exclusion of these permissions could cause problems."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static n()Z
    .locals 1

    .prologue
    .line 1319
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static o()Z
    .locals 2

    .prologue
    .line 1339
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TJC_OPTION_DISABLE_PERSISTENT_IDS"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "TJC_OPTION_DISABLE_PERSISTENT_IDS"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static p()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1936
    const/4 v1, 0x0

    .line 1938
    const-string v0, "TapjoyConnect"

    const-string v2, "generating sessionID..."

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1943
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/tapjoy/TapjoyConnectCore;->ac:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1950
    :goto_0
    return-object v0

    .line 1945
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 1947
    :goto_1
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unable to generate session id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1945
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static q()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1969
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1971
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->c:Ljava/lang/String;

    .line 1997
    :goto_0
    return-object v0

    .line 50199
    :cond_0
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v0

    .line 1975
    :goto_1
    if-eqz v2, :cond_2

    .line 1977
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v2, v1

    .line 50199
    goto :goto_1

    .line 50200
    :cond_2
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    move v2, v0

    .line 1980
    :goto_2
    if-eqz v2, :cond_4

    .line 1982
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move v2, v1

    .line 50200
    goto :goto_2

    .line 1985
    :cond_4
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->n()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1987
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->c:Ljava/lang/String;

    goto :goto_0

    .line 50201
    :cond_5
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->n:Ljava/lang/String;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 1990
    :goto_3
    if-eqz v0, :cond_7

    .line 1992
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->n:Ljava/lang/String;

    goto :goto_0

    :cond_6
    move v0, v1

    .line 50201
    goto :goto_3

    .line 1996
    :cond_7
    const-string v0, "TapjoyConnect"

    const-string v1, "Error -- no valid device identifier"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()V
    .locals 4

    .prologue
    .line 2398
    const-string v0, "TapjoyConnect"

    const-string v1, "Initializing mediation params"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    :try_start_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ah:Ljava/util/Hashtable;

    const-string v1, "TJC_OPTION_MEDIATION_CONFIGS"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2402
    if-eqz v0, :cond_0

    .line 2403
    const-string v1, "TapjoyConnect"

    const-string v2, "Initializing mediation partners with configs"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2404
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/mediation/TJMediationNetwork;

    .line 2405
    new-instance v2, Lcom/tapjoy/TapjoyConnectCore$3;

    invoke-direct {v2, p0, v0}, Lcom/tapjoy/TapjoyConnectCore$3;-><init>(Lcom/tapjoy/TapjoyConnectCore;Lcom/tapjoy/mediation/TJMediationNetwork;)V

    invoke-virtual {v2}, Lcom/tapjoy/TapjoyConnectCore$3;->run()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2418
    :catch_0
    move-exception v0

    const-string v0, "TapjoyConnect"

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "Invalid type! Make sure to pass in an ArrayList<TJMediationNetwork> type as your mediation configs."

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 2421
    :cond_0
    const-string v0, "TJC_OPTION_MEDIATION_TIMEOUT"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2422
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2423
    invoke-static {}, Lcom/tapjoy/mediation/TJMediationSettings;->getInstance()Lcom/tapjoy/mediation/TJMediationSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tapjoy/mediation/TJMediationSettings;->setTimeout(Ljava/lang/String;)V

    .line 2424
    const-string v1, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting mediation timeout to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2426
    :cond_1
    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 220
    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 231
    .local p2, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)V

    .line 232
    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)V
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p3, "tapjoyConnectListener"    # Lcom/tapjoy/TJConnectListener;

    .prologue
    .line 251
    .local p2, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;*>;"
    :try_start_0
    new-instance v0, Lcom/tapjoy/internal/el;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/el;-><init>(Ljava/lang/String;)V

    .line 10149
    iget-object v1, v0, Lcom/tapjoy/internal/el;->a:Lcom/tapjoy/internal/el$a;

    .line 252
    sget-object v2, Lcom/tapjoy/internal/el$a;->SDK_ANDROID:Lcom/tapjoy/internal/el$a;

    if-eq v1, v2, :cond_0

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given API key was not for Android."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    new-instance v1, Lcom/tapjoy/TapjoyIntegrationException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :cond_0
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->h:Ljava/lang/String;

    .line 11141
    iget-object v1, v0, Lcom/tapjoy/internal/el;->b:Ljava/lang/String;

    .line 260
    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    .line 11145
    iget-object v1, v0, Lcom/tapjoy/internal/el;->c:Ljava/lang/String;

    .line 261
    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    .line 11153
    iget-object v0, v0, Lcom/tapjoy/internal/el;->d:Ljava/lang/String;

    .line 262
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->O:Ljava/lang/String;

    .line 263
    invoke-static {p0}, Lcom/tapjoy/internal/fu;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fu;

    move-result-object v0

    .line 11187
    iput-object p1, v0, Lcom/tapjoy/internal/fu;->j:Ljava/lang/String;

    .line 265
    if-eqz p2, :cond_1

    .line 266
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ah:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 267
    invoke-static {}, Lcom/tapjoy/internal/eu;->b()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tapjoy/internal/es;->a(Ljava/util/Hashtable;)V

    .line 270
    :cond_1
    sput-object p3, Lcom/tapjoy/TapjoyConnectCore;->k:Lcom/tapjoy/TJConnectListener;

    .line 271
    new-instance v0, Lcom/tapjoy/TapjoyConnectCore;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyConnectCore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->i:Lcom/tapjoy/TapjoyConnectCore;

    .line 272
    return-void
.end method

.method private static s()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2562
    :try_start_0
    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->SHA1(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2564
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setPlugin(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2091
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->P:Ljava/lang/String;

    .line 2092
    return-void
.end method

.method public static setSDKType(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2100
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->Q:Ljava/lang/String;

    .line 2101
    return-void
.end method

.method public static setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/tapjoy/TJSetUserIDListener;

    .prologue
    .line 2110
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->D:Ljava/lang/String;

    .line 2111
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->l:Lcom/tapjoy/TJSetUserIDListener;

    .line 2113
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL parameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$2;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyConnectCore$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2135
    return-void
.end method

.method public static setViewShowing(Z)V
    .locals 3
    .param p0, "showing"    # Z

    .prologue
    .line 2202
    if-eqz p0, :cond_0

    .line 2203
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2208
    :goto_0
    return-void

    .line 2206
    :cond_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method public static viewDidClose(Ljava/lang/String;)V
    .locals 3
    .param p0, "contentViewId"    # Ljava/lang/String;

    .prologue
    .line 2160
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "viewDidClose: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2162
    sget-object v0, Lcom/tapjoy/internal/eo;->e:Lcom/tapjoy/internal/eo$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/eo$a;->notifyObservers()V

    .line 2163
    return-void
.end method

.method public static viewWillOpen(Ljava/lang/String;I)V
    .locals 3
    .param p0, "contentViewId"    # Ljava/lang/String;
    .param p1, "viewType"    # I

    .prologue
    .line 2170
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "viewWillOpen: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2172
    return-void
.end method


# virtual methods
.method public actionComplete(Ljava/lang/String;)V
    .locals 4
    .param p1, "actionID"    # Ljava/lang/String;

    .prologue
    .line 2247
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "actionComplete: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->g()Ljava/util/Map;

    move-result-object v0

    .line 2251
    const-string v1, "app_id"

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2252
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getTimeStampAndVerifierParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2254
    const-string v1, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PPA URL parameters: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2256
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tapjoy/TapjoyConnectCore$PPAThread;

    invoke-direct {v2, p0, v0}, Lcom/tapjoy/TapjoyConnectCore$PPAThread;-><init>(Lcom/tapjoy/TapjoyConnectCore;Ljava/util/Map;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2257
    return-void
.end method

.method public appPause()V
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->ab:Z

    .line 374
    return-void
.end method

.method public appResume()V
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->ab:Z

    if-eqz v0, :cond_0

    .line 384
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->p()Ljava/lang/String;

    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->ab:Z

    .line 387
    :cond_0
    return-void
.end method

.method public callConnect()V
    .locals 0

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore;->fetchAdvertisingID()V

    .line 331
    return-void
.end method

.method public completeConnectCall()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xc8

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 2306
    const-string v0, "TapjoyConnect"

    const-string v2, "starting connect call..."

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    const-string v0, "https://connect.tapjoy.com/"

    .line 2311
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v2

    const-string v4, "https://ws.tapjoyads.com/"

    if-eq v2, v4, :cond_0

    .line 2312
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v0

    .line 2316
    :cond_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v2

    if-nez v2, :cond_a

    .line 2317
    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object v2

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->s()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/tapjoy/internal/y;->b()J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lcom/tapjoy/TapjoyAppSettings;->getConnectResult(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 2318
    if-eqz v2, :cond_a

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2319
    const-string v2, "TapjoyConnect"

    const-string v4, "Connect using stored connect result"

    invoke-static {v2, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2320
    sput-boolean v3, Lcom/tapjoy/TapjoyConnectCore;->ae:Z

    .line 2323
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->r()V

    .line 2325
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->k:Lcom/tapjoy/TJConnectListener;

    if-eqz v2, :cond_1

    .line 2326
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->k:Lcom/tapjoy/TJConnectListener;

    invoke-interface {v2}, Lcom/tapjoy/TJConnectListener;->onConnectSuccess()V

    .line 2328
    :cond_1
    sget-object v2, Lcom/tapjoy/internal/eo;->a:Lcom/tapjoy/internal/eo$a;

    invoke-virtual {v2}, Lcom/tapjoy/internal/eo$a;->notifyObservers()V

    move v2, v3

    .line 2332
    :goto_0
    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->j:Lcom/tapjoy/TapjoyURLConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "api/connect/v3.json?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v0, v9, v9, v5}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    .line 2335
    if-eqz v0, :cond_8

    iget v4, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    if-ne v4, v8, :cond_8

    .line 2337
    iget-object v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2338
    const-string v0, "TapjoyConnect"

    const-string v1, "Successfully connected to Tapjoy"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    sput-boolean v3, Lcom/tapjoy/TapjoyConnectCore;->ae:Z

    .line 2342
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->r()V

    .line 2345
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v0

    .line 2346
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2347
    const-string v5, "TapjoyConnect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ": "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2350
    :cond_2
    if-nez v2, :cond_4

    .line 2351
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->k:Lcom/tapjoy/TJConnectListener;

    if-eqz v0, :cond_3

    .line 2352
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->k:Lcom/tapjoy/TJConnectListener;

    invoke-interface {v0}, Lcom/tapjoy/TJConnectListener;->onConnectSuccess()V

    .line 2354
    :cond_3
    sget-object v0, Lcom/tapjoy/internal/eo;->a:Lcom/tapjoy/internal/eo$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/eo$a;->notifyObservers()V

    .line 2356
    :cond_4
    sget-object v0, Lcom/tapjoy/internal/eo;->b:Lcom/tapjoy/internal/eo$a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/eo$a;->notifyObservers(Ljava/lang/Object;)V

    .line 2366
    :goto_2
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 2368
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v0

    .line 2369
    const-string v1, "package_names"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 2373
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/lang/String;

    invoke-static {v4, v5, v1}, Lcom/tapjoy/TapjoyConnectCore;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2374
    const-string v2, "timestamp"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2375
    const-string v2, "verifier"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2377
    new-instance v1, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "apps_installed?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    .line 2380
    if-eqz v0, :cond_5

    iget v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    if-ne v0, v8, :cond_5

    .line 2381
    const-string v0, "TapjoyConnect"

    const-string v1, "Successfully pinged sdkless api."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    :cond_5
    :goto_3
    return-void

    .line 2359
    :cond_6
    if-nez v2, :cond_7

    .line 2360
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->f()V

    .line 2362
    :cond_7
    sget-object v0, Lcom/tapjoy/internal/eo;->b:Lcom/tapjoy/internal/eo$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/eo$a;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_2

    .line 2387
    :cond_8
    if-nez v2, :cond_9

    .line 2388
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->f()V

    .line 2390
    :cond_9
    sget-object v0, Lcom/tapjoy/internal/eo;->b:Lcom/tapjoy/internal/eo$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/eo$a;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    move v2, v1

    goto/16 :goto_0
.end method

.method public enablePaidAppWithActionID(Ljava/lang/String;)V
    .locals 7
    .param p1, "paidAppPayPerActionID"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x2710

    const/4 v6, 0x0

    .line 2270
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "enablePaidAppWithActionID: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->Y:Ljava/lang/String;

    .line 2274
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    const-string v1, "tjcPrefrences"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2277
    const-string v1, "tapjoy_elapsed_time"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->Z:J

    .line 2279
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "paidApp elapsed: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/tapjoy/TapjoyConnectCore;->Z:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    iget-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->Z:J

    const-wide/32 v4, 0xdbba0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    .line 2285
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->Y:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->Y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2287
    const-string v0, "TapjoyConnect"

    const-string v1, "Calling PPA actionComplete..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->Y:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyConnectCore;->actionComplete(Ljava/lang/String;)V

    .line 2299
    :cond_0
    :goto_0
    return-void

    .line 2294
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->aa:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 2296
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->aa:Ljava/util/Timer;

    .line 2297
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->aa:Ljava/util/Timer;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$a;

    invoke-direct {v1, p0, v6}, Lcom/tapjoy/TapjoyConnectCore$a;-><init>(Lcom/tapjoy/TapjoyConnectCore;B)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public fetchAdvertisingID()V
    .locals 2

    .prologue
    .line 339
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyConnectCore$1;-><init>(Lcom/tapjoy/TapjoyConnectCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 366
    return-void
.end method

.method public getCurrencyMultiplier()F
    .locals 1

    .prologue
    .line 2468
    sget v0, Lcom/tapjoy/TapjoyConnectCore;->S:F

    return v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1728
    const/4 v1, 0x0

    .line 1732
    :try_start_0
    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1733
    const-string v2, "SERIAL"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1735
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1736
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1738
    :cond_0
    const-class v2, Landroid/os/Build;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1740
    :try_start_1
    const-string v1, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "serial: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1747
    :goto_0
    return-object v0

    .line 1742
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 1744
    :goto_1
    const-string v2, "TapjoyConnect"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1742
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2082
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->ad:Z

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1634
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->i:Lcom/tapjoy/TapjoyConnectCore;

    .line 1635
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->j:Lcom/tapjoy/TapjoyURLConnection;

    .line 1637
    const-string v0, "TapjoyConnect"

    const-string v1, "Releasing core static instance."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    return-void
.end method

.method public setCurrencyMultiplier(F)V
    .locals 3
    .param p1, "multiplier"    # F

    .prologue
    .line 2458
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVirtualCurrencyMultiplier: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    sput p1, Lcom/tapjoy/TapjoyConnectCore;->S:F

    .line 2460
    return-void
.end method
