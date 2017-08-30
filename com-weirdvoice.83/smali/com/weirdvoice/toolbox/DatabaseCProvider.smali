.class public Lcom/weirdvoice/toolbox/DatabaseCProvider;
.super Landroid/content/ContentProvider;
.source "DatabaseCProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/toolbox/DatabaseCProvider$Accounts;,
        Lcom/weirdvoice/toolbox/DatabaseCProvider$Balance;,
        Lcom/weirdvoice/toolbox/DatabaseCProvider$Calllogs;,
        Lcom/weirdvoice/toolbox/DatabaseCProvider$Cdr;,
        Lcom/weirdvoice/toolbox/DatabaseCProvider$Country;,
        Lcom/weirdvoice/toolbox/DatabaseCProvider$CountryAreaCode;,
        Lcom/weirdvoice/toolbox/DatabaseCProvider$CountryDial;,
        Lcom/weirdvoice/toolbox/DatabaseCProvider$CountryDialInternational;,
        Lcom/weirdvoice/toolbox/DatabaseCProvider$CountryDialNational;,
        Lcom/weirdvoice/toolbox/DatabaseCProvider$Currencies;,
        Lcom/weirdvoice/toolbox/DatabaseCProvider$DatabaseHelper;,
        Lcom/weirdvoice/toolbox/DatabaseCProvider$Hotspot;,
        Lcom/weirdvoice/toolbox/DatabaseCProvider$HotspotUpdate;,
        Lcom/weirdvoice/toolbox/DatabaseCProvider$Messages;,
        Lcom/weirdvoice/toolbox/DatabaseCProvider$ModifTable;,
        Lcom/weirdvoice/toolbox/DatabaseCProvider$MyHotspot;,
        Lcom/weirdvoice/toolbox/DatabaseCProvider$Outgoingfilters;,
        Lcom/weirdvoice/toolbox/DatabaseCProvider$Rates;,
        Lcom/weirdvoice/toolbox/DatabaseCProvider$RatesComb;,
        Lcom/weirdvoice/toolbox/DatabaseCProvider$RatesIN;,
        Lcom/weirdvoice/toolbox/DatabaseCProvider$SMSContacts;,
        Lcom/weirdvoice/toolbox/DatabaseCProvider$SMSMessages;
    }
.end annotation


# static fields
.field private static final ACCOUNTS:I = 0x13

.field private static final ACCOUNTS_ID:I = 0x14

.field private static AUTHORITY:Ljava/lang/String; = null

.field private static final BALANCES:I = 0x1

.field private static final BALANCE_ID:I = 0x2

.field private static final CALLLOGS:I = 0x15

.field private static final CALLLOGS_ID:I = 0x16

.field private static final CDRS:I = 0x3

.field private static final CDR_ID:I = 0x4

.field private static final COUNTRYAREACODES:I = 0x7

.field private static final COUNTRYAREACODE_ID:I = 0x8

.field private static final COUNTRYDIAL:I = 0x1b

.field private static final COUNTRYDIALINTERNATIONAL:I = 0x1d

.field private static final COUNTRYDIALINTERNATIONAL_ID:I = 0x1e

.field private static final COUNTRYDIALNATIONAL:I = 0x1f

.field private static final COUNTRYDIALNATIONAL_ID:I = 0x20

.field private static final COUNTRYDIAL_ID:I = 0x1c

.field private static final COUNTRYS:I = 0x5

.field private static final COUNTRY_ID:I = 0x6

.field private static final CURRENCIES:I = 0x21

.field private static final CURRENCIES_ID:I = 0x22

.field private static final DATABASE_NAME:Ljava/lang/String; = "tribair.db"

.field private static final DATABASE_VERSION:I = 0xb

.field private static final DB_TABLE_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final DB_TABLE_BALANCE:Ljava/lang/String; = "balance"

.field private static final DB_TABLE_CALLLOGS:Ljava/lang/String; = "calllogs"

.field private static final DB_TABLE_CDR:Ljava/lang/String; = "cdr"

.field private static final DB_TABLE_COUNTRY:Ljava/lang/String; = "country"

.field private static final DB_TABLE_COUNTRYDIAL:Ljava/lang/String; = "countryDial"

.field private static final DB_TABLE_COUNTRYDIAL_INTERNATIONAL:Ljava/lang/String; = "countryDialInternational"

.field private static final DB_TABLE_COUNTRYDIAL_NATIONAL:Ljava/lang/String; = "countryDialNational"

.field private static final DB_TABLE_COUNTRY_AREA_CODE:Ljava/lang/String; = "countryareacode"

.field private static final DB_TABLE_CURRENCIES:Ljava/lang/String; = "currencies"

.field private static final DB_TABLE_FILTERS:Ljava/lang/String; = "outgoingfilters"

.field private static final DB_TABLE_HOTSPOT:Ljava/lang/String; = "hotspot"

.field private static final DB_TABLE_HOTSPOT_UPDATE:Ljava/lang/String; = "hotspotUpdate"

.field private static final DB_TABLE_MESSAGES:Ljava/lang/String; = "messages"

.field private static final DB_TABLE_MODIFTABLE:Ljava/lang/String; = "modifTable"

.field private static final DB_TABLE_MYHOTSPOT:Ljava/lang/String; = "myhotspot"

.field private static final DB_TABLE_RATES:Ljava/lang/String; = "rates"

.field private static final DB_TABLE_RATESCOMB:Ljava/lang/String; = "ratescomb"

.field private static final DB_TABLE_RATESIN:Ljava/lang/String; = "ratesin"

.field private static final DB_TABLE_SMSCONTACTS:Ljava/lang/String; = "smscontacts"

.field private static final DB_TABLE_SMSMESSAGES:Ljava/lang/String; = "smsmessages"

.field private static final FILTERS:I = 0x17

.field private static final FILTERS_ID:I = 0x18

.field private static final HOTSPOTS:I = 0xb

.field private static final HOTSPOTUPDATES:I = 0xf

.field private static final HOTSPOTUPDATE_ID:I = 0x10

.field private static final HOTSPOT_ID:I = 0xc

.field private static final LOGTAG:Ljava/lang/String; = "DatabaseCProvider"

.field private static final MESSAGES:I = 0x19

.field private static final MESSAGES_ID:I = 0x1a

.field private static final MODIFTABLES:I = 0x11

.field private static final MODIFTABLE_ID:I = 0x12

.field private static final MYHOTSPOTS:I = 0xd

.field private static final MYHOTSPOT_ID:I = 0xe

.field private static final RATES:I = 0x9

.field private static final RATESCOMB:I = 0x29

.field private static final RATESCOMB_ID:I = 0x2a

.field private static final RATESIN:I = 0x27

.field private static final RATESIN_ID:I = 0x28

.field private static final RATES_ID:I = 0xa

.field private static final SMSCONTACTS:I = 0x25

.field private static final SMSCONTACTS_ID:I = 0x26

.field private static final SMSMESSAGES:I = 0x23

.field private static final SMSMESSAGES_ID:I = 0x24

.field private static sAccountsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sBalanceProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCalllogsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCdrProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCountryDialInternationalProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCountryDialNationalProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCountryDialProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCountryProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCountryareacodeProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCurrenciesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sHotspotProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sHotspotUpdateProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMessagesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sModifTableProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMyhotspotProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sOutgoingfiltersProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRatesCombProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRatesINProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRatesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSMSContactsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSMSMessagesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Lcom/weirdvoice/toolbox/DatabaseCProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    .line 137
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 155
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "balance"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 156
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "balance/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sBalanceProjectionMap:Ljava/util/HashMap;

    .line 159
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sBalanceProjectionMap:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sBalanceProjectionMap:Ljava/util/HashMap;

    const-string v1, "prepaid"

    const-string v2, "prepaid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sBalanceProjectionMap:Ljava/util/HashMap;

    const-string v1, "planName"

    const-string v2, "planName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sBalanceProjectionMap:Ljava/util/HashMap;

    const-string v1, "planStartDate"

    const-string v2, "planStartDate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sBalanceProjectionMap:Ljava/util/HashMap;

    const-string v1, "planEndDate"

    const-string v2, "planEndDate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sBalanceProjectionMap:Ljava/util/HashMap;

    const-string v1, "planInMinutes"

    const-string v2, "planInMinutes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sBalanceProjectionMap:Ljava/util/HashMap;

    const-string v1, "planOutMinutes"

    const-string v2, "planOutMinutes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sBalanceProjectionMap:Ljava/util/HashMap;

    const-string v1, "planInMinutesRem"

    const-string v2, "planInMinutesRem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sBalanceProjectionMap:Ljava/util/HashMap;

    const-string v1, "planOutMinutesRem"

    const-string v2, "planOutMinutesRem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "cdr"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 187
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "cdr/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCdrProjectionMap:Ljava/util/HashMap;

    .line 190
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCdrProjectionMap:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCdrProjectionMap:Ljava/util/HashMap;

    const-string v1, "calldate"

    const-string v2, "calldate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCdrProjectionMap:Ljava/util/HashMap;

    const-string v1, "src"

    const-string v2, "src"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCdrProjectionMap:Ljava/util/HashMap;

    const-string v1, "dst"

    const-string v2, "dst"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCdrProjectionMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCdrProjectionMap:Ljava/util/HashMap;

    const-string v1, "callType"

    const-string v2, "callType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCdrProjectionMap:Ljava/util/HashMap;

    const-string v1, "rate"

    const-string v2, "rate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCdrProjectionMap:Ljava/util/HashMap;

    const-string v1, "cost"

    const-string v2, "cost"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCdrProjectionMap:Ljava/util/HashMap;

    const-string v1, "ISOCode"

    const-string v2, "ISOCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "country"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 222
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "country/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryProjectionMap:Ljava/util/HashMap;

    .line 225
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryProjectionMap:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryProjectionMap:Ljava/util/HashMap;

    const-string v1, "uid"

    const-string v2, "uid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryProjectionMap:Ljava/util/HashMap;

    const-string v1, "ISOCode"

    const-string v2, "ISOCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryProjectionMap:Ljava/util/HashMap;

    const-string v1, "telephonyCode"

    const-string v2, "telephonyCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryProjectionMap:Ljava/util/HashMap;

    const-string v1, "IDDPrefix"

    const-string v2, "IDDPrefix"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryProjectionMap:Ljava/util/HashMap;

    const-string v1, "NDDPrefix"

    const-string v2, "NDDPrefix"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryProjectionMap:Ljava/util/HashMap;

    const-string v1, "minimumDigits"

    const-string v2, "minimumDigits"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryProjectionMap:Ljava/util/HashMap;

    const-string v1, "phoneFormat"

    const-string v2, "phoneFormat"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryProjectionMap:Ljava/util/HashMap;

    const-string v1, "aliasSet_uid"

    const-string v2, "aliasSet_uid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryProjectionMap:Ljava/util/HashMap;

    const-string v1, "maximumNumberOfDigits"

    const-string v2, "maximumNumberOfDigits"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryProjectionMap:Ljava/util/HashMap;

    const-string v1, "regionName"

    const-string v2, "regionName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryProjectionMap:Ljava/util/HashMap;

    const-string v1, "lastUpdate"

    const-string v2, "lastUpdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "countryareacode"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 254
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "countryareacode/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryareacodeProjectionMap:Ljava/util/HashMap;

    .line 257
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryareacodeProjectionMap:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryareacodeProjectionMap:Ljava/util/HashMap;

    const-string v1, "country_uid"

    const-string v2, "country_uid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryareacodeProjectionMap:Ljava/util/HashMap;

    const-string v1, "areaCode"

    const-string v2, "areaCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryareacodeProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryareacodeProjectionMap:Ljava/util/HashMap;

    const-string v1, "completeAreaCode"

    const-string v2, "completeAreaCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryareacodeProjectionMap:Ljava/util/HashMap;

    const-string v1, "apiCode"

    const-string v2, "apiCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "rates"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 281
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "rates/#"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesProjectionMap:Ljava/util/HashMap;

    .line 284
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesProjectionMap:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesProjectionMap:Ljava/util/HashMap;

    const-string v1, "CountryId"

    const-string v2, "CountryId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesProjectionMap:Ljava/util/HashMap;

    const-string v1, "CountryName"

    const-string v2, "CountryName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesProjectionMap:Ljava/util/HashMap;

    const-string v1, "CountryShName"

    const-string v2, "CountryShName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesProjectionMap:Ljava/util/HashMap;

    const-string v1, "CountryIso"

    const-string v2, "CountryIso"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesProjectionMap:Ljava/util/HashMap;

    const-string v1, "subCountry"

    const-string v2, "subCountry"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesProjectionMap:Ljava/util/HashMap;

    const-string v1, "partnerRate"

    const-string v2, "partnerRate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesProjectionMap:Ljava/util/HashMap;

    const-string v1, "apiCode"

    const-string v2, "apiCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "hotspot"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 310
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "hotspot/#"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 312
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sHotspotProjectionMap:Ljava/util/HashMap;

    .line 313
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sHotspotProjectionMap:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sHotspotProjectionMap:Ljava/util/HashMap;

    const-string v1, "apiCode"

    const-string v2, "apiCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sHotspotProjectionMap:Ljava/util/HashMap;

    const-string v1, "ssid"

    const-string v2, "ssid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sHotspotProjectionMap:Ljava/util/HashMap;

    const-string v1, "mac"

    const-string v2, "mac"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sHotspotProjectionMap:Ljava/util/HashMap;

    const-string v1, "longitude"

    const-string v2, "longitude"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sHotspotProjectionMap:Ljava/util/HashMap;

    const-string v1, "latitude"

    const-string v2, "latitude"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sHotspotProjectionMap:Ljava/util/HashMap;

    const-string v1, "qos"

    const-string v2, "qos"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sHotspotProjectionMap:Ljava/util/HashMap;

    const-string v1, "lastUpdate"

    const-string v2, "lastUpdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "myhotspot"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 343
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "myhotspot/#"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 345
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMyhotspotProjectionMap:Ljava/util/HashMap;

    .line 346
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMyhotspotProjectionMap:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMyhotspotProjectionMap:Ljava/util/HashMap;

    const-string v1, "apiCode"

    const-string v2, "apiCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMyhotspotProjectionMap:Ljava/util/HashMap;

    const-string v1, "ssid"

    const-string v2, "ssid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMyhotspotProjectionMap:Ljava/util/HashMap;

    const-string v1, "mac"

    const-string v2, "mac"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMyhotspotProjectionMap:Ljava/util/HashMap;

    const-string v1, "longitude"

    const-string v2, "longitude"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMyhotspotProjectionMap:Ljava/util/HashMap;

    const-string v1, "latitude"

    const-string v2, "latitude"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMyhotspotProjectionMap:Ljava/util/HashMap;

    const-string v1, "qos"

    const-string v2, "qos"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMyhotspotProjectionMap:Ljava/util/HashMap;

    const-string v1, "lastUpdate"

    const-string v2, "lastUpdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMyhotspotProjectionMap:Ljava/util/HashMap;

    const-string v1, "street"

    const-string v2, "street"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMyhotspotProjectionMap:Ljava/util/HashMap;

    const-string v1, "city"

    const-string v2, "city"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMyhotspotProjectionMap:Ljava/util/HashMap;

    const-string v1, "region"

    const-string v2, "region"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMyhotspotProjectionMap:Ljava/util/HashMap;

    const-string v1, "country"

    const-string v2, "country"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "hotspotUpdate"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 375
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "hotspotUpdate/#"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 377
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sHotspotUpdateProjectionMap:Ljava/util/HashMap;

    .line 378
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sHotspotUpdateProjectionMap:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sHotspotUpdateProjectionMap:Ljava/util/HashMap;

    const-string v1, "reqTopLeftLng"

    const-string v2, "reqTopLeftLng"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sHotspotUpdateProjectionMap:Ljava/util/HashMap;

    const-string v1, "reqBottomRightLng"

    const-string v2, "reqBottomRightLng"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sHotspotUpdateProjectionMap:Ljava/util/HashMap;

    const-string v1, "reqTopLeftLat"

    const-string v2, "reqTopLeftLat"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sHotspotUpdateProjectionMap:Ljava/util/HashMap;

    const-string v1, "reqBottomRightLat"

    const-string v2, "reqBottomRightLat"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sHotspotUpdateProjectionMap:Ljava/util/HashMap;

    const-string v1, "lastUpdate"

    const-string v2, "lastUpdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sHotspotUpdateProjectionMap:Ljava/util/HashMap;

    const-string v1, "reqDate"

    const-string v2, "reqDate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "modifTable"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 398
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "modifTable/#"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sModifTableProjectionMap:Ljava/util/HashMap;

    .line 401
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sModifTableProjectionMap:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sModifTableProjectionMap:Ljava/util/HashMap;

    const-string v1, "tableName"

    const-string v2, "tableName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sModifTableProjectionMap:Ljava/util/HashMap;

    const-string v1, "lastUpdate"

    const-string v2, "lastUpdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "accounts"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 445
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "accounts/#"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 447
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    .line 448
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "active"

    const-string v2, "active"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "wizard"

    const-string v2, "wizard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "display_name"

    const-string v2, "display_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "priority"

    const-string v2, "priority"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "acc_id"

    const-string v2, "acc_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "reg_uri"

    const-string v2, "reg_uri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "mwi_enabled"

    const-string v2, "mwi_enabled"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "publish_enabled"

    const-string v2, "publish_enabled"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "reg_timeout"

    const-string v2, "reg_timeout"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "ka_interval"

    const-string v2, "ka_interval"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "pidf_tuple_id"

    const-string v2, "pidf_tuple_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "force_contact"

    const-string v2, "force_contact"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "allow_contact_rewrite"

    const-string v2, "allow_contact_rewrite"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_rewrite_method"

    const-string v2, "contact_rewrite_method"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_params"

    const-string v2, "contact_params"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_uri_params"

    const-string v2, "contact_uri_params"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "transport"

    const-string v2, "transport"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "use_srtp"

    const-string v2, "use_srtp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "proxy"

    const-string v2, "proxy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "realm"

    const-string v2, "realm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "scheme"

    const-string v2, "scheme"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "username"

    const-string v2, "username"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "datatype"

    const-string v2, "datatype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    const-string v1, "data"

    const-string v2, "data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "calllogs"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 492
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "calllogs/#"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 494
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCalllogsProjectionMap:Ljava/util/HashMap;

    .line 495
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCalllogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCalllogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCalllogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "numberlabel"

    const-string v2, "numberlabel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCalllogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "numbertype"

    const-string v2, "numbertype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCalllogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "date"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCalllogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCalllogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "new"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCalllogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "number"

    const-string v2, "number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCalllogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "outgoingfilters"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 520
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "outgoingfilters/#"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 522
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sOutgoingfiltersProjectionMap:Ljava/util/HashMap;

    .line 523
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sOutgoingfiltersProjectionMap:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sOutgoingfiltersProjectionMap:Ljava/util/HashMap;

    const-string v1, "priority"

    const-string v2, "priority"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sOutgoingfiltersProjectionMap:Ljava/util/HashMap;

    const-string v1, "account"

    const-string v2, "account"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sOutgoingfiltersProjectionMap:Ljava/util/HashMap;

    const-string v1, "matches"

    const-string v2, "matches"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sOutgoingfiltersProjectionMap:Ljava/util/HashMap;

    const-string v1, "replace"

    const-string v2, "replace"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sOutgoingfiltersProjectionMap:Ljava/util/HashMap;

    const-string v1, "action"

    const-string v2, "action"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "messages"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 549
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "messages/#"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 551
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    .line 552
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "sender"

    const-string v2, "sender"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "receiver"

    const-string v2, "receiver"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact"

    const-string v2, "contact"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "body"

    const-string v2, "body"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "mime_type"

    const-string v2, "mime_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "date"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "status"

    const-string v2, "status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "read"

    const-string v2, "read"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "countryDial"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 576
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "countryDial/#"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 578
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryDialProjectionMap:Ljava/util/HashMap;

    .line 579
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryDialProjectionMap:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryDialProjectionMap:Ljava/util/HashMap;

    const-string v1, "ISOCode"

    const-string v2, "ISOCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryDialProjectionMap:Ljava/util/HashMap;

    const-string v1, "telephonyCode"

    const-string v2, "telephonyCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryDialProjectionMap:Ljava/util/HashMap;

    const-string v1, "isZeroNationalOnly"

    const-string v2, "isZeroNationalOnly"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "countryDialInternational"

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 596
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "countryDialInternational/#"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 598
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryDialInternationalProjectionMap:Ljava/util/HashMap;

    .line 599
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryDialInternationalProjectionMap:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryDialInternationalProjectionMap:Ljava/util/HashMap;

    const-string v1, "telephonyCode"

    const-string v2, "telephonyCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryDialInternationalProjectionMap:Ljava/util/HashMap;

    const-string v1, "IDD"

    const-string v2, "IDD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "countryDialNational"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 615
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "countryDialNational/#"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 617
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryDialNationalProjectionMap:Ljava/util/HashMap;

    .line 618
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryDialNationalProjectionMap:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryDialNationalProjectionMap:Ljava/util/HashMap;

    const-string v1, "telephonyCode"

    const-string v2, "telephonyCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryDialNationalProjectionMap:Ljava/util/HashMap;

    const-string v1, "NDD"

    const-string v2, "NDD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "currencies"

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 637
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "currencies/#"

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 639
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCurrenciesProjectionMap:Ljava/util/HashMap;

    .line 640
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCurrenciesProjectionMap:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCurrenciesProjectionMap:Ljava/util/HashMap;

    const-string v1, "apiCode"

    const-string v2, "apiCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCurrenciesProjectionMap:Ljava/util/HashMap;

    const-string v1, "active"

    const-string v2, "active"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCurrenciesProjectionMap:Ljava/util/HashMap;

    const-string v1, "code"

    const-string v2, "code"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCurrenciesProjectionMap:Ljava/util/HashMap;

    const-string v1, "euroRate"

    const-string v2, "euroRate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCurrenciesProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "smsmessages"

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 662
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "smsmessages/#"

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 664
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sSMSMessagesProjectionMap:Ljava/util/HashMap;

    .line 665
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sSMSMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sSMSMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "apiCode"

    const-string v2, "apiCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sSMSMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "ctcNo"

    const-string v2, "ctcNo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sSMSMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "msgDate"

    const-string v2, "msgDate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sSMSMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "isRead"

    const-string v2, "isRead"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sSMSMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "message"

    const-string v2, "message"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "smscontacts"

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 688
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "smscontacts/#"

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 690
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sSMSContactsProjectionMap:Ljava/util/HashMap;

    .line 691
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sSMSContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sSMSContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "ctcName"

    const-string v2, "ctcName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sSMSContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "ctcNo"

    const-string v2, "ctcNo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sSMSContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "didNo"

    const-string v2, "didNo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sSMSContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "newMsg"

    const-string v2, "newMsg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sSMSContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "isSMS"

    const-string v2, "isSMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sSMSContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "isDel"

    const-string v2, "isDel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "ratesin"

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 715
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "ratesin/#"

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 717
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesINProjectionMap:Ljava/util/HashMap;

    .line 718
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesINProjectionMap:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesINProjectionMap:Ljava/util/HashMap;

    const-string v1, "CountryId"

    const-string v2, "CountryId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesINProjectionMap:Ljava/util/HashMap;

    const-string v1, "CountryName"

    const-string v2, "CountryName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesINProjectionMap:Ljava/util/HashMap;

    const-string v1, "CountryIso"

    const-string v2, "CountryIso"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesINProjectionMap:Ljava/util/HashMap;

    const-string v1, "smsRate"

    const-string v2, "smsRate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesINProjectionMap:Ljava/util/HashMap;

    const-string v1, "inRate"

    const-string v2, "inRate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesINProjectionMap:Ljava/util/HashMap;

    const-string v1, "apiCode"

    const-string v2, "apiCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "ratescomb"

    const/16 v3, 0x29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 745
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "ratescomb/#"

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 747
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesCombProjectionMap:Ljava/util/HashMap;

    .line 748
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesCombProjectionMap:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesCombProjectionMap:Ljava/util/HashMap;

    const-string v1, "CountryId"

    const-string v2, "CountryId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesCombProjectionMap:Ljava/util/HashMap;

    const-string v1, "CountryName"

    const-string v2, "CountryName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesCombProjectionMap:Ljava/util/HashMap;

    const-string v1, "CountryShName"

    const-string v2, "CountryShName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesCombProjectionMap:Ljava/util/HashMap;

    const-string v1, "CountryIso"

    const-string v2, "CountryIso"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesCombProjectionMap:Ljava/util/HashMap;

    const-string v1, "subCountry"

    const-string v2, "subCountry"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesCombProjectionMap:Ljava/util/HashMap;

    const-string v1, "smsRate"

    const-string v2, "smsRate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesCombProjectionMap:Ljava/util/HashMap;

    const-string v1, "inRate"

    const-string v2, "inRate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesCombProjectionMap:Ljava/util/HashMap;

    const-string v1, "outRate"

    const-string v2, "outRate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesCombProjectionMap:Ljava/util/HashMap;

    const-string v1, "apiCode"

    const-string v2, "apiCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;

    return-object v0
.end method

.method private getDefaultProjection(Landroid/net/Uri;)Ljava/util/HashMap;
    .locals 2
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1511
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$Balance;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1512
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sBalanceProjectionMap:Ljava/util/HashMap;

    .line 1554
    :goto_0
    return-object v0

    .line 1513
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$Cdr;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1514
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCdrProjectionMap:Ljava/util/HashMap;

    goto :goto_0

    .line 1515
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$Country;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1516
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryProjectionMap:Ljava/util/HashMap;

    goto :goto_0

    .line 1517
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$CountryAreaCode;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1518
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryareacodeProjectionMap:Ljava/util/HashMap;

    goto :goto_0

    .line 1519
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$Rates;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1520
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesProjectionMap:Ljava/util/HashMap;

    goto :goto_0

    .line 1521
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$Hotspot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1522
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sHotspotProjectionMap:Ljava/util/HashMap;

    goto :goto_0

    .line 1523
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$MyHotspot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1524
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMyhotspotProjectionMap:Ljava/util/HashMap;

    goto :goto_0

    .line 1525
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$HotspotUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1526
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sHotspotUpdateProjectionMap:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 1527
    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$ModifTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1528
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sModifTableProjectionMap:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 1529
    :cond_8
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1530
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sAccountsProjectionMap:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 1531
    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$Calllogs;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1532
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCalllogsProjectionMap:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 1533
    :cond_a
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$Outgoingfilters;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1534
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sOutgoingfiltersProjectionMap:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 1535
    :cond_b
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$Messages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1536
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 1537
    :cond_c
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$CountryDial;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1538
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryDialProjectionMap:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 1539
    :cond_d
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$CountryDialInternational;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1540
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryDialInternationalProjectionMap:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 1541
    :cond_e
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$CountryDialNational;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1542
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCountryDialNationalProjectionMap:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 1543
    :cond_f
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$Currencies;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1544
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sCurrenciesProjectionMap:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 1545
    :cond_10
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$SMSMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1546
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sSMSMessagesProjectionMap:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 1547
    :cond_11
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$SMSContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1548
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sSMSContactsProjectionMap:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 1549
    :cond_12
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$RatesIN;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1550
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesINProjectionMap:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 1551
    :cond_13
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$RatesComb;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1552
    sget-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sRatesCombProjectionMap:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 1554
    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private getDefaultSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1460
    const-string v0, "id desc"

    return-object v0
.end method

.method private getIdColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1456
    const-string v0, "id"

    return-object v0
.end method

.method private getTableName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 1558
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$Balance;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1559
    const-string v0, "balance"

    .line 1601
    :goto_0
    return-object v0

    .line 1560
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$Cdr;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1561
    const-string v0, "cdr"

    goto :goto_0

    .line 1562
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$Country;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1563
    const-string v0, "country"

    goto :goto_0

    .line 1564
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$CountryAreaCode;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1565
    const-string v0, "countryareacode"

    goto :goto_0

    .line 1566
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$Rates;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1567
    const-string v0, "rates"

    goto :goto_0

    .line 1568
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$Hotspot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1569
    const-string v0, "hotspot"

    goto :goto_0

    .line 1570
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$MyHotspot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1571
    const-string v0, "myhotspot"

    goto :goto_0

    .line 1572
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$HotspotUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1573
    const-string v0, "hotspotUpdate"

    goto/16 :goto_0

    .line 1574
    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$ModifTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1575
    const-string v0, "modifTable"

    goto/16 :goto_0

    .line 1576
    :cond_8
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1577
    const-string v0, "accounts"

    goto/16 :goto_0

    .line 1578
    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$Calllogs;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1579
    const-string v0, "calllogs"

    goto/16 :goto_0

    .line 1580
    :cond_a
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$Outgoingfilters;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1581
    const-string v0, "outgoingfilters"

    goto/16 :goto_0

    .line 1582
    :cond_b
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$Messages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1583
    const-string v0, "messages"

    goto/16 :goto_0

    .line 1584
    :cond_c
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$CountryDial;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1585
    const-string v0, "countryDial"

    goto/16 :goto_0

    .line 1586
    :cond_d
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$CountryDialInternational;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1587
    const-string v0, "countryDialInternational"

    goto/16 :goto_0

    .line 1588
    :cond_e
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$CountryDialNational;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1589
    const-string v0, "countryDialNational"

    goto/16 :goto_0

    .line 1590
    :cond_f
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$Currencies;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1591
    const-string v0, "currencies"

    goto/16 :goto_0

    .line 1592
    :cond_10
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$SMSMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1593
    const-string v0, "smsmessages"

    goto/16 :goto_0

    .line 1594
    :cond_11
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$SMSContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1595
    const-string v0, "smscontacts"

    goto/16 :goto_0

    .line 1596
    :cond_12
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$RatesIN;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1597
    const-string v0, "ratesin"

    goto/16 :goto_0

    .line 1598
    :cond_13
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider$RatesComb;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1599
    const-string v0, "ratescomb"

    goto/16 :goto_0

    .line 1601
    :cond_14
    const-string v0, ""

    goto/16 :goto_0
.end method

.method private isCollectionUri(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1464
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/toolbox/DatabaseCProvider$Balance;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1465
    sget-object v2, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1507
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1465
    goto :goto_0

    .line 1466
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/toolbox/DatabaseCProvider$Cdr;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1467
    sget-object v2, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 1468
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/toolbox/DatabaseCProvider$Country;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1469
    sget-object v2, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 1470
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/toolbox/DatabaseCProvider$CountryAreaCode;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1471
    sget-object v2, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 1472
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/toolbox/DatabaseCProvider$Rates;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1473
    sget-object v2, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 1474
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/toolbox/DatabaseCProvider$Hotspot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1475
    sget-object v2, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 1476
    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/toolbox/DatabaseCProvider$MyHotspot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1477
    sget-object v2, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 1478
    :cond_8
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/toolbox/DatabaseCProvider$HotspotUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1479
    sget-object v2, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0xf

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 1480
    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/toolbox/DatabaseCProvider$ModifTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1481
    sget-object v2, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 1482
    :cond_a
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/toolbox/DatabaseCProvider$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1483
    sget-object v2, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x13

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 1484
    :cond_b
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/toolbox/DatabaseCProvider$Calllogs;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1485
    sget-object v2, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x15

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 1486
    :cond_c
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/toolbox/DatabaseCProvider$Outgoingfilters;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1487
    sget-object v2, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x17

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 1488
    :cond_d
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/toolbox/DatabaseCProvider$Messages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1489
    sget-object v2, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x19

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 1490
    :cond_e
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/toolbox/DatabaseCProvider$CountryDial;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1491
    sget-object v2, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 1492
    :cond_f
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/toolbox/DatabaseCProvider$CountryDialInternational;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1493
    sget-object v2, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x1d

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 1494
    :cond_10
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/toolbox/DatabaseCProvider$CountryDialNational;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1495
    sget-object v2, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 1496
    :cond_11
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/toolbox/DatabaseCProvider$Currencies;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1497
    sget-object v2, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x21

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 1498
    :cond_12
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/toolbox/DatabaseCProvider$SMSMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1499
    sget-object v2, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x23

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 1500
    :cond_13
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/toolbox/DatabaseCProvider$SMSContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1501
    sget-object v2, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x25

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 1502
    :cond_14
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/toolbox/DatabaseCProvider$RatesIN;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1503
    sget-object v2, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x27

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 1504
    :cond_15
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/toolbox/DatabaseCProvider$RatesComb;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1505
    sget-object v2, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_16
    move v0, v1

    .line 1507
    goto/16 :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 32
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 1139
    const/4 v7, 0x0

    .line 1142
    .local v7, "count":I
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v28

    .line 1143
    .local v28, "tableName":Ljava/lang/String;
    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 1144
    new-instance v29, Ljava/lang/IllegalArgumentException;

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Unknown URI "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1286
    .end local v28    # "tableName":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 1287
    .local v15, "e":Ljava/lang/Exception;
    const-string v29, "DatabaseCProvider"

    const-string v30, "cant delete record"

    invoke-static/range {v29 .. v30}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    .end local v15    # "e":Ljava/lang/Exception;
    :goto_0
    return v7

    .line 1147
    .restart local v28    # "tableName":Ljava/lang/String;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->mOpenHelper:Lcom/weirdvoice/toolbox/DatabaseCProvider$DatabaseHelper;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/weirdvoice/toolbox/DatabaseCProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    .line 1149
    .local v14, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v29, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v19

    .line 1150
    .local v19, "match":I
    packed-switch v19, :pswitch_data_0

    .line 1281
    new-instance v29, Ljava/lang/IllegalArgumentException;

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Unknown URI "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 1173
    :pswitch_0
    move-object/from16 v0, v28

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1284
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 1176
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1177
    .local v4, "balanceId":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "id="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1178
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_1

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v31, " AND ("

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x29

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_2
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1177
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1179
    goto :goto_1

    .line 1178
    :cond_1
    const-string v29, ""

    goto :goto_2

    .line 1181
    .end local v4    # "balanceId":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1182
    .local v6, "cdrId":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "id="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1183
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_2

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v31, " AND ("

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x29

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_3
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1182
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1184
    goto/16 :goto_1

    .line 1183
    :cond_2
    const-string v29, ""

    goto :goto_3

    .line 1186
    .end local v6    # "cdrId":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1187
    .local v11, "countryId":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "id="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1188
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_3

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v31, " AND ("

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x29

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_4
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1187
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1189
    goto/16 :goto_1

    .line 1188
    :cond_3
    const-string v29, ""

    goto :goto_4

    .line 1191
    .end local v11    # "countryId":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1192
    .local v12, "countryareacodeId":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "id="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1193
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_4

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v31, " AND ("

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x29

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_5
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1192
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1194
    goto/16 :goto_1

    .line 1193
    :cond_4
    const-string v29, ""

    goto :goto_5

    .line 1196
    .end local v12    # "countryareacodeId":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1197
    .local v23, "ratesId":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "id="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1198
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_5

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v31, " AND ("

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x29

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_6
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1197
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1199
    goto/16 :goto_1

    .line 1198
    :cond_5
    const-string v29, ""

    goto :goto_6

    .line 1201
    .end local v23    # "ratesId":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1202
    .local v17, "hotspotId":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "id="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1203
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_6

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v31, " AND ("

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x29

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_7
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1202
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1204
    goto/16 :goto_1

    .line 1203
    :cond_6
    const-string v29, ""

    goto :goto_7

    .line 1206
    .end local v17    # "hotspotId":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1207
    .local v22, "myhotspotId":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "id="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1208
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_7

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v31, " AND ("

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x29

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_8
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1207
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1209
    goto/16 :goto_1

    .line 1208
    :cond_7
    const-string v29, ""

    goto :goto_8

    .line 1211
    .end local v22    # "myhotspotId":Ljava/lang/String;
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1212
    .local v18, "hotspotUpdateId":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "id="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1213
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_8

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v31, " AND ("

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x29

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_9
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1212
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1214
    goto/16 :goto_1

    .line 1213
    :cond_8
    const-string v29, ""

    goto :goto_9

    .line 1216
    .end local v18    # "hotspotUpdateId":Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1217
    .local v21, "modifytableId":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "id="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1218
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_9

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v31, " AND ("

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x29

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_a
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1217
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1219
    goto/16 :goto_1

    .line 1218
    :cond_9
    const-string v29, ""

    goto :goto_a

    .line 1221
    .end local v21    # "modifytableId":Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1222
    .local v3, "accountsId":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "id="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1223
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_a

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v31, " AND ("

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x29

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_b
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1222
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1224
    goto/16 :goto_1

    .line 1223
    :cond_a
    const-string v29, ""

    goto :goto_b

    .line 1226
    .end local v3    # "accountsId":Ljava/lang/String;
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1227
    .local v5, "calllogsId":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "id="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1228
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_b

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v31, " AND ("

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x29

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_c
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1227
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1229
    goto/16 :goto_1

    .line 1228
    :cond_b
    const-string v29, ""

    goto :goto_c

    .line 1231
    .end local v5    # "calllogsId":Ljava/lang/String;
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1232
    .local v16, "filtersId":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "id="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1233
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_c

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v31, " AND ("

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x29

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_d
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1232
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1234
    goto/16 :goto_1

    .line 1233
    :cond_c
    const-string v29, ""

    goto :goto_d

    .line 1236
    .end local v16    # "filtersId":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1237
    .local v20, "messagesId":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "id="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1238
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_d

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v31, " AND ("

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x29

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_e
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1237
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1239
    goto/16 :goto_1

    .line 1238
    :cond_d
    const-string v29, ""

    goto :goto_e

    .line 1241
    .end local v20    # "messagesId":Ljava/lang/String;
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1242
    .local v8, "countryDialId":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "id="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1243
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_e

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v31, " AND ("

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x29

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_f
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1242
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1244
    goto/16 :goto_1

    .line 1243
    :cond_e
    const-string v29, ""

    goto :goto_f

    .line 1246
    .end local v8    # "countryDialId":Ljava/lang/String;
    :pswitch_f
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1247
    .local v9, "countryDialInternationalId":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "id="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1248
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_f

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v31, " AND ("

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x29

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_10
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1247
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1249
    goto/16 :goto_1

    .line 1248
    :cond_f
    const-string v29, ""

    goto :goto_10

    .line 1251
    .end local v9    # "countryDialInternationalId":Ljava/lang/String;
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1252
    .local v10, "countryDialNationalId":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "id="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1253
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_10

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v31, " AND ("

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x29

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_11
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1252
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1254
    goto/16 :goto_1

    .line 1253
    :cond_10
    const-string v29, ""

    goto :goto_11

    .line 1256
    .end local v10    # "countryDialNationalId":Ljava/lang/String;
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1257
    .local v13, "currenciesId":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "id="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1258
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_11

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v31, " AND ("

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x29

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_12
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1257
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1259
    goto/16 :goto_1

    .line 1258
    :cond_11
    const-string v29, ""

    goto :goto_12

    .line 1261
    .end local v13    # "currenciesId":Ljava/lang/String;
    :pswitch_12
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 1262
    .local v27, "smsmessagesId":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "id="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1263
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_12

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v31, " AND ("

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x29

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_13
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1262
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1264
    goto/16 :goto_1

    .line 1263
    :cond_12
    const-string v29, ""

    goto :goto_13

    .line 1266
    .end local v27    # "smsmessagesId":Ljava/lang/String;
    :pswitch_13
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 1267
    .local v26, "smscontactsId":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "id="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1268
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_13

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v31, " AND ("

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x29

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_14
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1267
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1269
    goto/16 :goto_1

    .line 1268
    :cond_13
    const-string v29, ""

    goto :goto_14

    .line 1271
    .end local v26    # "smscontactsId":Ljava/lang/String;
    :pswitch_14
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 1272
    .local v25, "ratesinId":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "id="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1273
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_14

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v31, " AND ("

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x29

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_15
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1272
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1274
    goto/16 :goto_1

    .line 1273
    :cond_14
    const-string v29, ""

    goto :goto_15

    .line 1276
    .end local v25    # "ratesinId":Ljava/lang/String;
    :pswitch_15
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 1277
    .local v24, "ratescombId":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "id="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1278
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_15

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v31, " AND ("

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x29

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_16
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1277
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1279
    goto/16 :goto_1

    .line 1278
    :cond_15
    const-string v29, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_16

    .line 1150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_15
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 869
    sget-object v1, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 870
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 957
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown URI "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 873
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/vnd.tribair.balance"

    .line 955
    :goto_0
    return-object v1

    .line 875
    :pswitch_1
    const-string v1, "vnd.android.cursor.item/vnd.tribair.balance"

    goto :goto_0

    .line 877
    :pswitch_2
    const-string v1, "vnd.android.cursor.dir/vnd.tribair.cdr"

    goto :goto_0

    .line 879
    :pswitch_3
    const-string v1, "vnd.android.cursor.item/vnd.tribair.cdr"

    goto :goto_0

    .line 881
    :pswitch_4
    const-string v1, "vnd.android.cursor.dir/vnd.tribair.country"

    goto :goto_0

    .line 883
    :pswitch_5
    const-string v1, "vnd.android.cursor.item/vnd.tribair.country"

    goto :goto_0

    .line 885
    :pswitch_6
    const-string v1, "vnd.android.cursor.dir/vnd.tribair.countryareacode"

    goto :goto_0

    .line 887
    :pswitch_7
    const-string v1, "vnd.android.cursor.item/vnd.tribair.countryareacode"

    goto :goto_0

    .line 889
    :pswitch_8
    const-string v1, "vnd.android.cursor.dir/vnd.tribair.rates"

    goto :goto_0

    .line 891
    :pswitch_9
    const-string v1, "vnd.android.cursor.item/vnd.tribair.rates"

    goto :goto_0

    .line 893
    :pswitch_a
    const-string v1, "vnd.android.cursor.dir/vnd.tribair.hotspot"

    goto :goto_0

    .line 895
    :pswitch_b
    const-string v1, "vnd.android.cursor.item/vnd.tribair.hotspot"

    goto :goto_0

    .line 897
    :pswitch_c
    const-string v1, "vnd.android.cursor.dir/vnd.tribair.myhotspot"

    goto :goto_0

    .line 899
    :pswitch_d
    const-string v1, "vnd.android.cursor.item/vnd.tribair.myhotspot"

    goto :goto_0

    .line 901
    :pswitch_e
    const-string v1, "vnd.android.cursor.dir/vnd.tribair.hotspotUpdate"

    goto :goto_0

    .line 903
    :pswitch_f
    const-string v1, "vnd.android.cursor.item/vnd.tribair.hotspotUpdate"

    goto :goto_0

    .line 905
    :pswitch_10
    const-string v1, "vnd.android.cursor.dir/vnd.tribair.modifTable"

    goto :goto_0

    .line 907
    :pswitch_11
    const-string v1, "vnd.android.cursor.item/vnd.tribair.modifTable"

    goto :goto_0

    .line 909
    :pswitch_12
    const-string v1, "vnd.android.cursor.dir/vnd.tribair.accounts"

    goto :goto_0

    .line 911
    :pswitch_13
    const-string v1, "vnd.android.cursor.item/vnd.tribair.accounts"

    goto :goto_0

    .line 913
    :pswitch_14
    const-string v1, "vnd.android.cursor.dir/vnd.tribair.calllogs"

    goto :goto_0

    .line 915
    :pswitch_15
    const-string v1, "vnd.android.cursor.item/vnd.tribair.calllogs"

    goto :goto_0

    .line 917
    :pswitch_16
    const-string v1, "vnd.android.cursor.dir/vnd.tribair.filters"

    goto :goto_0

    .line 919
    :pswitch_17
    const-string v1, "vnd.android.cursor.item/vnd.tribair.filters"

    goto :goto_0

    .line 921
    :pswitch_18
    const-string v1, "vnd.android.cursor.dir/vnd.tribair.messages"

    goto :goto_0

    .line 923
    :pswitch_19
    const-string v1, "vnd.android.cursor.item/vnd.tribair.messages"

    goto :goto_0

    .line 925
    :pswitch_1a
    const-string v1, "vnd.android.cursor.dir/vnd.tribair.countryDial"

    goto :goto_0

    .line 927
    :pswitch_1b
    const-string v1, "vnd.android.cursor.item/vnd.tribair.countryDial"

    goto :goto_0

    .line 929
    :pswitch_1c
    const-string v1, "vnd.android.cursor.dir/vnd.tribair.countryDialInternational"

    goto :goto_0

    .line 931
    :pswitch_1d
    const-string v1, "vnd.android.cursor.item/vnd.tribair.countryDialInternational"

    goto :goto_0

    .line 933
    :pswitch_1e
    const-string v1, "vnd.android.cursor.dir/vnd.tribair.countryDialNational"

    goto :goto_0

    .line 935
    :pswitch_1f
    const-string v1, "vnd.android.cursor.item/vnd.tribair.countryDialNational"

    goto :goto_0

    .line 937
    :pswitch_20
    const-string v1, "vnd.android.cursor.dir/vnd.tribair.currencies"

    goto :goto_0

    .line 939
    :pswitch_21
    const-string v1, "vnd.android.cursor.item/vnd.tribair.currencies"

    goto :goto_0

    .line 941
    :pswitch_22
    const-string v1, "vnd.android.cursor.dir/vnd.tribair.smsmessages"

    goto :goto_0

    .line 943
    :pswitch_23
    const-string v1, "vnd.android.cursor.item/vnd.tribair.smsmessages"

    goto :goto_0

    .line 945
    :pswitch_24
    const-string v1, "vnd.android.cursor.dir/vnd.tribair.smscontacts"

    goto :goto_0

    .line 947
    :pswitch_25
    const-string v1, "vnd.android.cursor.item/vnd.tribair.smscontacts"

    goto :goto_0

    .line 949
    :pswitch_26
    const-string v1, "vnd.android.cursor.dir/vnd.tribair.ratesin"

    goto :goto_0

    .line 951
    :pswitch_27
    const-string v1, "vnd.android.cursor.item/vnd.tribair.ratesin"

    goto :goto_0

    .line 953
    :pswitch_28
    const-string v1, "vnd.android.cursor.dir/vnd.tribair.ratescomb"

    goto :goto_0

    .line 955
    :pswitch_29
    const-string v1, "vnd.android.cursor.item/vnd.tribair.ratescomb"

    goto :goto_0

    .line 870
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
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
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 964
    invoke-direct {p0, p1}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 965
    .local v4, "tableName":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 966
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unknown URI "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 969
    :cond_0
    if-eqz p2, :cond_1

    .line 970
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 975
    .local v5, "values":Landroid/content/ContentValues;
    :goto_0
    iget-object v8, p0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->mOpenHelper:Lcom/weirdvoice/toolbox/DatabaseCProvider$DatabaseHelper;

    invoke-virtual {v8}, Lcom/weirdvoice/toolbox/DatabaseCProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 977
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v8, ""

    invoke-virtual {v0, v4, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 979
    .local v2, "rowId":J
    sget-object v8, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 980
    .local v1, "match":I
    packed-switch v1, :pswitch_data_0

    .line 1131
    :pswitch_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unknown URI "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 972
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "match":I
    .end local v2    # "rowId":J
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .restart local v5    # "values":Landroid/content/ContentValues;
    goto :goto_0

    .line 983
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "match":I
    .restart local v2    # "rowId":J
    :pswitch_1
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 984
    sget-object v8, Lcom/weirdvoice/toolbox/DatabaseCProvider$Balance;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 985
    .local v6, "zeUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v7, v6

    .line 1127
    .end local v6    # "zeUri":Landroid/net/Uri;
    .local v7, "zeUri":Landroid/net/Uri;
    :goto_1
    return-object v7

    .line 990
    .end local v7    # "zeUri":Landroid/net/Uri;
    :pswitch_2
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 991
    sget-object v8, Lcom/weirdvoice/toolbox/DatabaseCProvider$Cdr;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 992
    .restart local v6    # "zeUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v7, v6

    .line 993
    .end local v6    # "zeUri":Landroid/net/Uri;
    .restart local v7    # "zeUri":Landroid/net/Uri;
    goto :goto_1

    .line 997
    .end local v7    # "zeUri":Landroid/net/Uri;
    :pswitch_3
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 998
    sget-object v8, Lcom/weirdvoice/toolbox/DatabaseCProvider$Country;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 999
    .restart local v6    # "zeUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v7, v6

    .line 1000
    .end local v6    # "zeUri":Landroid/net/Uri;
    .restart local v7    # "zeUri":Landroid/net/Uri;
    goto :goto_1

    .line 1004
    .end local v7    # "zeUri":Landroid/net/Uri;
    :pswitch_4
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 1005
    sget-object v8, Lcom/weirdvoice/toolbox/DatabaseCProvider$CountryAreaCode;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1006
    .restart local v6    # "zeUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v7, v6

    .line 1007
    .end local v6    # "zeUri":Landroid/net/Uri;
    .restart local v7    # "zeUri":Landroid/net/Uri;
    goto :goto_1

    .line 1011
    .end local v7    # "zeUri":Landroid/net/Uri;
    :pswitch_5
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 1012
    sget-object v8, Lcom/weirdvoice/toolbox/DatabaseCProvider$Rates;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1013
    .restart local v6    # "zeUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v7, v6

    .line 1014
    .end local v6    # "zeUri":Landroid/net/Uri;
    .restart local v7    # "zeUri":Landroid/net/Uri;
    goto :goto_1

    .line 1018
    .end local v7    # "zeUri":Landroid/net/Uri;
    :pswitch_6
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 1019
    sget-object v8, Lcom/weirdvoice/toolbox/DatabaseCProvider$Hotspot;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1020
    .restart local v6    # "zeUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v7, v6

    .line 1021
    .end local v6    # "zeUri":Landroid/net/Uri;
    .restart local v7    # "zeUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 1025
    .end local v7    # "zeUri":Landroid/net/Uri;
    :pswitch_7
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 1026
    sget-object v8, Lcom/weirdvoice/toolbox/DatabaseCProvider$MyHotspot;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1027
    .restart local v6    # "zeUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v7, v6

    .line 1028
    .end local v6    # "zeUri":Landroid/net/Uri;
    .restart local v7    # "zeUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 1032
    .end local v7    # "zeUri":Landroid/net/Uri;
    :pswitch_8
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 1033
    sget-object v8, Lcom/weirdvoice/toolbox/DatabaseCProvider$HotspotUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1034
    .restart local v6    # "zeUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v7, v6

    .line 1035
    .end local v6    # "zeUri":Landroid/net/Uri;
    .restart local v7    # "zeUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 1039
    .end local v7    # "zeUri":Landroid/net/Uri;
    :pswitch_9
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 1040
    sget-object v8, Lcom/weirdvoice/toolbox/DatabaseCProvider$ModifTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1041
    .restart local v6    # "zeUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v7, v6

    .line 1042
    .end local v6    # "zeUri":Landroid/net/Uri;
    .restart local v7    # "zeUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 1046
    .end local v7    # "zeUri":Landroid/net/Uri;
    :pswitch_a
    const-wide/16 v8, -0x1

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 1047
    sget-object v8, Lcom/weirdvoice/toolbox/DatabaseCProvider$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1048
    .restart local v6    # "zeUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1049
    const-string v8, "DatabaseCProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "new account added accountid: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v6

    .line 1050
    .end local v6    # "zeUri":Landroid/net/Uri;
    .restart local v7    # "zeUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 1054
    .end local v7    # "zeUri":Landroid/net/Uri;
    :pswitch_b
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 1055
    sget-object v8, Lcom/weirdvoice/toolbox/DatabaseCProvider$Calllogs;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1056
    .restart local v6    # "zeUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v7, v6

    .line 1057
    .end local v6    # "zeUri":Landroid/net/Uri;
    .restart local v7    # "zeUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 1061
    .end local v7    # "zeUri":Landroid/net/Uri;
    :pswitch_c
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 1062
    sget-object v8, Lcom/weirdvoice/toolbox/DatabaseCProvider$Outgoingfilters;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1063
    .restart local v6    # "zeUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v7, v6

    .line 1064
    .end local v6    # "zeUri":Landroid/net/Uri;
    .restart local v7    # "zeUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 1068
    .end local v7    # "zeUri":Landroid/net/Uri;
    :pswitch_d
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 1069
    sget-object v8, Lcom/weirdvoice/toolbox/DatabaseCProvider$Messages;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1070
    .restart local v6    # "zeUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v7, v6

    .line 1071
    .end local v6    # "zeUri":Landroid/net/Uri;
    .restart local v7    # "zeUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 1075
    .end local v7    # "zeUri":Landroid/net/Uri;
    :pswitch_e
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 1076
    sget-object v8, Lcom/weirdvoice/toolbox/DatabaseCProvider$CountryDial;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1077
    .restart local v6    # "zeUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v7, v6

    .line 1078
    .end local v6    # "zeUri":Landroid/net/Uri;
    .restart local v7    # "zeUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 1082
    .end local v7    # "zeUri":Landroid/net/Uri;
    :pswitch_f
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 1083
    sget-object v8, Lcom/weirdvoice/toolbox/DatabaseCProvider$CountryDialInternational;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1084
    .restart local v6    # "zeUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v7, v6

    .line 1085
    .end local v6    # "zeUri":Landroid/net/Uri;
    .restart local v7    # "zeUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 1089
    .end local v7    # "zeUri":Landroid/net/Uri;
    :pswitch_10
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 1090
    sget-object v8, Lcom/weirdvoice/toolbox/DatabaseCProvider$CountryDialNational;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1091
    .restart local v6    # "zeUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v7, v6

    .line 1092
    .end local v6    # "zeUri":Landroid/net/Uri;
    .restart local v7    # "zeUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 1096
    .end local v7    # "zeUri":Landroid/net/Uri;
    :pswitch_11
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 1097
    sget-object v8, Lcom/weirdvoice/toolbox/DatabaseCProvider$Currencies;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1098
    .restart local v6    # "zeUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v7, v6

    .line 1099
    .end local v6    # "zeUri":Landroid/net/Uri;
    .restart local v7    # "zeUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 1103
    .end local v7    # "zeUri":Landroid/net/Uri;
    :pswitch_12
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 1104
    sget-object v8, Lcom/weirdvoice/toolbox/DatabaseCProvider$SMSMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1105
    .restart local v6    # "zeUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v7, v6

    .line 1106
    .end local v6    # "zeUri":Landroid/net/Uri;
    .restart local v7    # "zeUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 1110
    .end local v7    # "zeUri":Landroid/net/Uri;
    :pswitch_13
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 1111
    sget-object v8, Lcom/weirdvoice/toolbox/DatabaseCProvider$SMSContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1112
    .restart local v6    # "zeUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v7, v6

    .line 1113
    .end local v6    # "zeUri":Landroid/net/Uri;
    .restart local v7    # "zeUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 1117
    .end local v7    # "zeUri":Landroid/net/Uri;
    :pswitch_14
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 1118
    sget-object v8, Lcom/weirdvoice/toolbox/DatabaseCProvider$RatesIN;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1119
    .restart local v6    # "zeUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v7, v6

    .line 1120
    .end local v6    # "zeUri":Landroid/net/Uri;
    .restart local v7    # "zeUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 1124
    .end local v7    # "zeUri":Landroid/net/Uri;
    :pswitch_15
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 1125
    sget-object v8, Lcom/weirdvoice/toolbox/DatabaseCProvider$RatesComb;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1126
    .restart local v6    # "zeUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v7, v6

    .line 1127
    .end local v6    # "zeUri":Landroid/net/Uri;
    .restart local v7    # "zeUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 1134
    .end local v7    # "zeUri":Landroid/net/Uri;
    :cond_2
    new-instance v8, Landroid/database/SQLException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to insert row into "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 980
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_15
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 821
    new-instance v0, Lcom/weirdvoice/toolbox/DatabaseCProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/weirdvoice/toolbox/DatabaseCProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->mOpenHelper:Lcom/weirdvoice/toolbox/DatabaseCProvider$DatabaseHelper;

    .line 822
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 827
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 828
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v8, 0x0

    .line 831
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 832
    .local v10, "tableName":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 833
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown URI "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    .end local v10    # "tableName":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 862
    .local v9, "e":Ljava/lang/Exception;
    const-string v2, "DatabaseCProvider"

    const-string v3, "cant get the cursor "

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v8

    .line 836
    .restart local v10    # "tableName":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 838
    invoke-direct {p0, p1}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->isCollectionUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 839
    invoke-direct {p0, p1}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getDefaultProjection(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 848
    :goto_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 849
    invoke-direct {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getDefaultSortOrder()Ljava/lang/String;

    move-result-object v7

    .line 855
    .local v7, "orderBy":Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->mOpenHelper:Lcom/weirdvoice/toolbox/DatabaseCProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/weirdvoice/toolbox/DatabaseCProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 856
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 859
    invoke-virtual {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 842
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v7    # "orderBy":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getDefaultProjection(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getIdColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 851
    :cond_2
    move-object/from16 v7, p5

    .restart local v7    # "orderBy":Ljava/lang/String;
    goto :goto_2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 34
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 1294
    const/4 v8, 0x0

    .line 1297
    .local v8, "count":I
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v30

    .line 1298
    .local v30, "tableName":Ljava/lang/String;
    const-string v31, ""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 1299
    new-instance v31, Ljava/lang/IllegalArgumentException;

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "Unknown URI "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v31
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1440
    .end local v30    # "tableName":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1441
    .local v16, "e":Ljava/lang/Exception;
    const-string v31, "DatabaseCProvider"

    const-string v32, "cant update record"

    invoke-static/range {v31 .. v32}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v31

    const-string v32, "currencies"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->mOpenHelper:Lcom/weirdvoice/toolbox/DatabaseCProvider$DatabaseHelper;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/weirdvoice/toolbox/DatabaseCProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v31

    const-string v32, "CREATE TABLE IF NOT EXISTS currencies (id INTEGER PRIMARY KEY AUTOINCREMENT, apiCode INTEGER, active varchar(2), code varchar(3), euroRate FLOAT, name varchar(40));"

    invoke-virtual/range {v31 .. v32}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1452
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v8

    .line 1302
    .restart local v30    # "tableName":Ljava/lang/String;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/toolbox/DatabaseCProvider;->mOpenHelper:Lcom/weirdvoice/toolbox/DatabaseCProvider$DatabaseHelper;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/weirdvoice/toolbox/DatabaseCProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 1304
    .local v15, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v31, Lcom/weirdvoice/toolbox/DatabaseCProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v21

    .line 1305
    .local v21, "match":I
    packed-switch v21, :pswitch_data_0

    .line 1436
    new-instance v31, Ljava/lang/IllegalArgumentException;

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "Unknown URI "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 1328
    :pswitch_0
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1439
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 1331
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1332
    .local v5, "balanceId":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "id="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1333
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_2

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, " AND ("

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v33, 0x29

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    :goto_2
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1332
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1334
    goto :goto_1

    .line 1333
    :cond_2
    const-string v31, ""

    goto :goto_2

    .line 1336
    .end local v5    # "balanceId":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1337
    .local v7, "cdrId":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "id="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1338
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_3

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, " AND ("

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v33, 0x29

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    :goto_3
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1337
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1339
    goto/16 :goto_1

    .line 1338
    :cond_3
    const-string v31, ""

    goto :goto_3

    .line 1341
    .end local v7    # "cdrId":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1342
    .local v12, "countryId":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "id="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1343
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_4

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, " AND ("

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v33, 0x29

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    :goto_4
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1342
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1344
    goto/16 :goto_1

    .line 1343
    :cond_4
    const-string v31, ""

    goto :goto_4

    .line 1346
    .end local v12    # "countryId":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1347
    .local v13, "countryareacodeId":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "id="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1348
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_5

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, " AND ("

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v33, 0x29

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    :goto_5
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1347
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1349
    goto/16 :goto_1

    .line 1348
    :cond_5
    const-string v31, ""

    goto :goto_5

    .line 1351
    .end local v13    # "countryareacodeId":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 1352
    .local v25, "ratesId":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "id="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1353
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_6

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, " AND ("

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v33, 0x29

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    :goto_6
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1352
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1354
    goto/16 :goto_1

    .line 1353
    :cond_6
    const-string v31, ""

    goto :goto_6

    .line 1356
    .end local v25    # "ratesId":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1357
    .local v19, "hotspotId":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "id="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1358
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_7

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, " AND ("

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v33, 0x29

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    :goto_7
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1357
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1359
    goto/16 :goto_1

    .line 1358
    :cond_7
    const-string v31, ""

    goto :goto_7

    .line 1361
    .end local v19    # "hotspotId":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 1362
    .local v24, "myhotspotId":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "id="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1363
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_8

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, " AND ("

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v33, 0x29

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    :goto_8
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1362
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1364
    goto/16 :goto_1

    .line 1363
    :cond_8
    const-string v31, ""

    goto :goto_8

    .line 1366
    .end local v24    # "myhotspotId":Ljava/lang/String;
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1367
    .local v20, "hotspotUpdateId":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "id="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1368
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_9

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, " AND ("

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v33, 0x29

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    :goto_9
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1367
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1369
    goto/16 :goto_1

    .line 1368
    :cond_9
    const-string v31, ""

    goto :goto_9

    .line 1371
    .end local v20    # "hotspotUpdateId":Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1372
    .local v23, "modifytableId":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "id="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1373
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_a

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, " AND ("

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v33, 0x29

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    :goto_a
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1372
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1374
    goto/16 :goto_1

    .line 1373
    :cond_a
    const-string v31, ""

    goto :goto_a

    .line 1376
    .end local v23    # "modifytableId":Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1377
    .local v4, "accountsId":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "id="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1378
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_b

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, " AND ("

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v33, 0x29

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    :goto_b
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1377
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1379
    goto/16 :goto_1

    .line 1378
    :cond_b
    const-string v31, ""

    goto :goto_b

    .line 1381
    .end local v4    # "accountsId":Ljava/lang/String;
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1382
    .local v6, "calllogsId":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "id="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1383
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_c

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, " AND ("

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v33, 0x29

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    :goto_c
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1382
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1384
    goto/16 :goto_1

    .line 1383
    :cond_c
    const-string v31, ""

    goto :goto_c

    .line 1386
    .end local v6    # "calllogsId":Ljava/lang/String;
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1387
    .local v18, "filtersId":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "id="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1388
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_d

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, " AND ("

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v33, 0x29

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    :goto_d
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1387
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1389
    goto/16 :goto_1

    .line 1388
    :cond_d
    const-string v31, ""

    goto :goto_d

    .line 1391
    .end local v18    # "filtersId":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1392
    .local v22, "messagesId":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "id="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1393
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_e

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, " AND ("

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v33, 0x29

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    :goto_e
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1392
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1394
    goto/16 :goto_1

    .line 1393
    :cond_e
    const-string v31, ""

    goto :goto_e

    .line 1396
    .end local v22    # "messagesId":Ljava/lang/String;
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1397
    .local v9, "countryDialId":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "id="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1398
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_f

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, " AND ("

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v33, 0x29

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    :goto_f
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1397
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1399
    goto/16 :goto_1

    .line 1398
    :cond_f
    const-string v31, ""

    goto :goto_f

    .line 1401
    .end local v9    # "countryDialId":Ljava/lang/String;
    :pswitch_f
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1402
    .local v10, "countryDialInternationalId":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "id="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1403
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_10

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, " AND ("

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v33, 0x29

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    :goto_10
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1402
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1404
    goto/16 :goto_1

    .line 1403
    :cond_10
    const-string v31, ""

    goto :goto_10

    .line 1406
    .end local v10    # "countryDialInternationalId":Ljava/lang/String;
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1407
    .local v11, "countryDialNationalId":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "id="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1408
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_11

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, " AND ("

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v33, 0x29

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    :goto_11
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1407
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1409
    goto/16 :goto_1

    .line 1408
    :cond_11
    const-string v31, ""

    goto :goto_11

    .line 1411
    .end local v11    # "countryDialNationalId":Ljava/lang/String;
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1412
    .local v14, "currenciesId":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "id="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1413
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_12

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, " AND ("

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v33, 0x29

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    :goto_12
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1412
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1414
    goto/16 :goto_1

    .line 1413
    :cond_12
    const-string v31, ""

    goto :goto_12

    .line 1416
    .end local v14    # "currenciesId":Ljava/lang/String;
    :pswitch_12
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1417
    .local v29, "smsmessagesId":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "id="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1418
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_13

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, " AND ("

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v33, 0x29

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    :goto_13
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1417
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1419
    goto/16 :goto_1

    .line 1418
    :cond_13
    const-string v31, ""

    goto :goto_13

    .line 1421
    .end local v29    # "smsmessagesId":Ljava/lang/String;
    :pswitch_13
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 1422
    .local v28, "smscontactsId":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "id="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1423
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_14

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, " AND ("

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v33, 0x29

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    :goto_14
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1422
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1424
    goto/16 :goto_1

    .line 1423
    :cond_14
    const-string v31, ""

    goto :goto_14

    .line 1426
    .end local v28    # "smscontactsId":Ljava/lang/String;
    :pswitch_14
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 1427
    .local v27, "ratesinId":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "id="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1428
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_15

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, " AND ("

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v33, 0x29

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    :goto_15
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1427
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1429
    goto/16 :goto_1

    .line 1428
    :cond_15
    const-string v31, ""

    goto :goto_15

    .line 1431
    .end local v27    # "ratesinId":Ljava/lang/String;
    :pswitch_15
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 1432
    .local v26, "ratescombId":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "id="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1433
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_16

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v33, " AND ("

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v33, 0x29

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    :goto_16
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1432
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1434
    goto/16 :goto_1

    .line 1433
    :cond_16
    const-string v31, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_16

    .line 1446
    .end local v15    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v21    # "match":I
    .end local v26    # "ratescombId":Ljava/lang/String;
    .end local v30    # "tableName":Ljava/lang/String;
    .restart local v16    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v17

    .line 1447
    .local v17, "ex":Ljava/lang/Exception;
    const-string v31, "DatabaseCProvider"

    const-string v32, "can not update record"

    invoke-static/range {v31 .. v32}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_15
    .end packed-switch
.end method
