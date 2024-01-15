export const toValue = (digits: string, base: number) : number => {
    digits = digits.toUpperCase();
    let v = 0;
    for(let i = 0; i < digits.length; i++) {
        let d: number = digits.charCodeAt(i);
        if (base <= 10 || d <= 58) {
            d -= 48;
        } else {
            d -= 55;
        }
        if (d >= base || d < 0)
            throw Error("Carattere non valido");
        v = v * base + d;
    }
    return v;
}

export const toBase = (n: number, base: number) : string => {
    let ret = "";
    do  {
        const last = n % base;
        n = Math.floor(n / base);
        if (last < 10) {
            ret = String.fromCharCode(last +48) + ret;
        } else {
            ret = String.fromCharCode(last + 55) + ret;
        }
    } while (n > 0);
    return ret;
}

const es1 = (binDigits: string) => {
    console.log(toValue(binDigits, 2));
}

const es3 = (hexDigits: string) => {
    console.log(toBase(toValue(hexDigits, 16), 4));
}

const es4 = (num: number) => {
    console.log(toBase(num, 4));
}

const es5 = (num: number) => {
    console.log(toBase(num, 7));
}

