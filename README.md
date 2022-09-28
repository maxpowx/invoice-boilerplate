# Requirements

    apt-get install pandoc texlive-xetex lmodern texlive-fonts-recommended

# Usage

copy the yaml template for a new invoice (let us suppose the yaml template is `example.yml`)

    cp example.yml 2019-1.yml

modify it appropriatelly and run:

    make with yml=2019-1.yml

which outputs `2019-1.pdf`

# Changes to original code

- added expiry date (with variable dates)
- changed the tex template
    - I added hardcoded catalan (not available through yaml)
    - I added the taxes that affects me

the idea is that some day I will do it "better". right now concentrating on having invoices working as I want and sharing it with everyone without waiting to have something nice to show.

# Howto quote

change `invoice-text` to Quote, comment `expiration-text`

# Preview

result of

    convert -alpha deactivate -density 300 2019-1.pdf preview.png

![preview image](./preview.png)